'''
    We use the Qiskit optimizer with the gate set {u1,h,x,cnot}
    References:
    - https://github.com/Qiskit/qiskit-terra/blob/master/qiskit/transpiler/preset_passmanagers/level2.py
'''

import math
import numpy
import os
from qiskit import QuantumCircuit
from qiskit.compiler import transpile
from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import Unroller, Optimize1qGates, CommutationAnalysis, CommutativeCancellation, CXCancellation, Depth, FixedPoint, Collect2qBlocks, ConsolidateBlocks
import sys
import pyzx as zx
import re

def count(d):
    sum = 0
    for k in d.keys():
        sum += d[k]
    return sum
    
def get_closest_multiple_of_pi(theta):
    l = [x * (math.pi/4) for x in range(-7,8)]
    l1 = [abs(x - theta) for x in l]
    return(range(-7,8)[l1.index(min(l1))])

def run_on_file(fname,file_handler,logfile):

    print("====================================================================")
    print("Running benchmark {}".format(fname))

    # Call the obfuscator; this also runs VOQC
    obfuscated_file = "results/"+file_handler+"-obfuscated.qasm"
    post_voqc_file = "results/"+file_handler+"-aftervoqc.qasm"
    stream_obf = os.popen("dune exec ./obfuscator.exe {} {} {} --root extraction".format(
        fname, obfuscated_file, post_voqc_file
    ))
    output_obf = stream_obf.readlines()
    if (len(output_obf) < 9):
        return 0
    gates_orig = int(output_obf[1].split(' ')[2][:-1])
    cnot_orig = int(output_obf[1].split(' ')[-1][:-1])
    gates_obf = int(output_obf[4].split(' ')[4][:-1])
    cnot_obf =int(output_obf[4].split(' ')[-1][:-1])
    gates_voqc = int(output_obf[8].split(' ')[5][:-1])

    # Run Qiskit

    if (os.path.exists(obfuscated_file) == False): return 0

    inqasm = open(obfuscated_file, "r")
    tmp = open("copy-qiskit.qasm", "w") # hardcoded filename
    p_ccz = re.compile("ccz (.*), (.*), (.*);")
    p_ccx = re.compile("ccx (.*), (.*), (.*);")
    p_cx = re.compile("cx (.*),(.*);")
    p_rz = re.compile("rz15\((.*)\) (.*);")
    
    for line in inqasm:
        m1 = p_ccx.match(line)
        m2 = p_ccz.match(line)
        m3 = p_cx.match(line)
        m4 = p_rz.match(line)
        if m1:
            a = m1.group(1)
            b = m1.group(2)
            c = m1.group(3)
            tmp.write("h %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (b, c))
            tmp.write("tdg %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (a, c))
            tmp.write("t %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (b, c))
            tmp.write("tdg %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (a, c))
            tmp.write("cx %s, %s;\n" % (a, b))
            tmp.write("tdg %s;\n" % (b))
            tmp.write("cx %s, %s;\n" % (a, b))
            tmp.write("t %s;\n" % (a))
            tmp.write("t %s;\n" % (b))
            tmp.write("t %s;\n" % (c))
            tmp.write("h %s;\n" % (c))
        elif m2:
            a = m2.group(1)
            b = m2.group(2)
            c = m2.group(3)
            tmp.write("cx %s, %s;\n" % (b, c))
            tmp.write("tdg %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (a, c))
            tmp.write("t %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (b, c))
            tmp.write("tdg %s;\n" % (c))
            tmp.write("cx %s, %s;\n" % (a, c))
            tmp.write("cx %s, %s;\n" % (a, b))
            tmp.write("tdg %s;\n" % (b))
            tmp.write("cx %s, %s;\n" % (a, b))
            tmp.write("t %s;\n" % (a))
            tmp.write("t %s;\n" % (b))
            tmp.write("t %s;\n" % (c))
        elif m3:
            a = m3.group(1)
            b = m3.group(2)
            if a!=b:
                tmp.write("cx %s, %s;\n" % (a, b))
        elif m4:
            a = m4.group(1)
            b = m4.group(2)
            tmp.write("u1(%f) %s;\n" % ((int(a)*3.14/32768), b))
        else:
            tmp.write(line)
    tmp.close()
    circ = QuantumCircuit.from_qasm_file("copy-qiskit.qasm")

    num_gates_before = count(circ.count_ops())
    # getting a t-count only makes sense for the current benchmarks, which only 
    # contain rotations by PI/4
    t_count_before = 0
    for inst, _, _ in circ.data:
        if (inst.name == "t" or inst.name == "tdg"):
            t_count_before += 1
    # print("\nORIGINAL: %d gates, %d T-gates" % (num_gates_before, t_count_before))

    # A
    basis_gates = ['u1', 'h', 'x', 'cx']
    _unroll = Unroller(basis_gates)
    _depth_check = [Depth(), FixedPoint('depth')]
    def _opt_control(property_set):
        return not property_set['depth_fixed_point']
    _opt = [Optimize1qGates(), CommutativeCancellation()]
    pmA = PassManager()
    pmA.append(_unroll)
    pmA.append([CommutationAnalysis()])
    pmA.append(_depth_check + _opt, do_while=_opt_control)
    circA = pmA.run(circ)
    num_gates_afterA = count(circA.count_ops())
    t_count_afterA = 0
    for inst, _, _ in circA.data:
        if (inst.name == "u1"):
            if (get_closest_multiple_of_pi(inst.params[0]) % 2 == 1):
                t_count_afterA += 1
    with open(logfile,'a+') as f:
        reductionA = num_gates_before - num_gates_afterA
        gates_qiskit = gates_obf - reductionA
        # f.write("After optimization with Qiskit: {} gates, {} T-gates\n".format(num_gates_before - reduction, t_count_afterA))

    # Run Staq
    stream = os.popen('./benchmarks/staq/build/staq -S -O2 copy-qiskit.qasm | wc -l')
    gates_after = stream.read()
    reductionS = max(num_gates_before - int(gates_after),0)
    gates_staq = gates_obf - reductionS
    # with open(logfile,'a+') as f:
    #     f.write("After Staq optimization, number of gates is " + str(num_gates_before-reduction))
    #     f.write("\n\n\n=======================================================\n")
    with open(logfile,'a+') as f:
        f.write('{:>25},{:>25},{:>25},{:>25},{:>25},{:>25},{:>25},{:>25}\n'.format(
            file_handler,gates_orig,cnot_orig,gates_obf,cnot_obf,gates_voqc,gates_qiskit,gates_staq))


if __name__ == "__main__":
    logfile=sys.argv[1]

    with open(logfile,'w+') as f:
        f.write('{:>25},{:>25},{:>25},{:>25},{:>25},{:>25},{:>25},{:>25}\n'.format(
            'Benchmarks','Total gates (Original)','CNOT (Original)','Total gates (Obfuscated)',
            'CNOT (Obfuscated)','Total gates(VOQC)','Total gates (Qiskit)','Total gates (STAQ)\n'))

    # Arithmetic Benchmarks
    for fname in os.listdir("benchmarks/Arithmetic_and_Toffoli"):
        run_on_file("benchmarks/Arithmetic_and_Toffoli/%s" % fname,fname.split('.')[0],logfile)
    # Google Benchmarks
    for fname in os.listdir("benchmarks/Google-supremacy-examples"):
        run_on_file("benchmarks/Google-supremacy-examples/%s" % fname,fname.split('.')[0],logfile)
    # IQP Benchmarks
    for fname in os.listdir("benchmarks/IQP-supremacy-examples"):
        run_on_file("benchmarks/IQP-supremacy-examples/%s" % fname,fname.split('.')[0],logfile)
