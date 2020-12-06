from random import randint
from random import seed
import networkx as nx
import sys

qubits = int(sys.argv[1])

filename = 'IQP-{}.qasm'.format(qubits)

seed(42)

while(True):
    G = nx.erdos_renyi_graph(qubits,3/(qubits-1))
    maxdegree = sorted(G.degree, key = lambda x : x[1], reverse = True)[0][1]
    # print(maxdegree, nx.is_connected(G))
    if(maxdegree < 4 and nx.is_connected(G)):
        break

A = nx.adjacency_matrix(G)

instructions = ['OPENQASM 2.0;\n','include "qelib1.inc";\n','\n',
                'qreg q[{}];\n'.format(qubits),'\n']

for q in range(qubits):
    instructions.append('h q[{}];\n'.format(q))

for q1 in range(qubits):
    for q2 in range(qubits):
        if(A[q1,q2] == 1):
            instructions.append('h q[{}];\n'.format(q2))
            instructions.append('cx q[{}], q[{}];\n'.format(q1,q2))
            instructions.append('h q[{}];\n'.format(q2))

for q in range(qubits):
    instructions.append('rz15({}) q[{}];\n'.format(randint(0,32768),q))

for q in range(qubits):
    instructions.append('h q[{}];\n'.format(q))

with open(filename,'w+') as f:
    for line in instructions:
        f.write(line)