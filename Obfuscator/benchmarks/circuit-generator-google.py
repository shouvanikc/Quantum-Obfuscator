from random import seed
from random import randint
import sys

qubitx = int(sys.argv[1])
qubity = int(sys.argv[2])
qubits = qubitx * qubity

layers = int(sys.argv[3])

filename = 'x-{}-y-{}-layers-{}.qasm'.format(qubitx, qubity, layers)

instructions = ['OPENQASM 2.0;\n','include "qelib1.inc";\n','\n',
                'qreg q[{}];\n'.format(qubits),'\n']

def makesqrtx (q, instructions):
    instructions.append('h q[{}];\n'.format(q))
    instructions.append('rz15(8192) q[{}];\n'.format(q))
    instructions.append('h q[{}];\n'.format(q))

def makesqrty (q, instructions):
    instructions.append('h q[{}];\n'.format(q))
    instructions.append('rz15(8192) q[{}];\n'.format(q))
    instructions.append('h q[{}];\n'.format(q))

def makesqrtz (q, instructions):
    instructions.append('rz15(8192) q[{}];\n'.format(q))

def makecz (q1, q2, instructions):
    instructions.append('h q[{}];\n'.format(q2))
    instructions.append('cx q[{}],q[{}];\n'.format(q1,q2))
    instructions.append('h q[{}];\n'.format(q2))

def makeiswap (q1, q2, instructions):
    instructions.append('h q[{}];\n'.format(q2))
    instructions.append('cx q[{}],q[{}];\n'.format(q1,q2))
    instructions.append('h q[{}];\n'.format(q2))

seed(42)

for _ in range(layers):
    for i in range(qubitx):
        for j in range(qubity):
            value = randint(0,2)
            if (value == 0):
                makesqrtx(i*qubitx + j, instructions)
            elif (value == 1):
                makesqrty(i*qubitx + j, instructions)
            else :
                makesqrtz(i*qubitx + j, instructions)
    for i in range(qubitx):
        for j in range(qubity):
            value = randint(0,1)
            if (value == 0):
                makecz((i)*qubitx + (j), (i)*qubitx + (j), instructions)
            else :
                makeiswap((i)*qubitx + (j), (i)*qubitx + (j), instructions)
            value = randint(0,1)
            if (value == 0):
                makecz((i)*qubitx + (j), ((i+1)*qubitx + (j+1))%qubits, instructions)
            else :
                makeiswap((i)*qubitx + (j), ((i+1)*qubitx + (j+1))%qubits, instructions)

with open(filename,'w+') as f:
    for line in instructions:
        f.write(line)

