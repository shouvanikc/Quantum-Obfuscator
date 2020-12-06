# Quantum Circuit Obfuscator

This repository contains an implementation of an obfuscator for quantum circuits. It is the accompanying software artifact for the paper **Scalable Verification of Quantum Supremacy based on Circuit Obfuscation** *Shouvanik Chakrabarti, Chi-Ning Chou, Kai-Min Chung, and Xiaodi Wu*.

## Overview

The obfuscator takes as input a quantum circuit and increases the number of qubits (by 100) and the number of quantum gates, while producing an 'obfuscated' version of the circuit that is functionally equivalent.

The obfuscator is based on primitives from **SQIR**, a Small Quantum Intermediate Representation for quantum programs, and the Verified Optimizer for Quantum Circuits **(VOQC)**. The repository is built upon a clone of the [SQIR repository](https://github.com/inQWIRE/SQIR). The implementation of the obfuscator is found under the Obfuscator subdirectory.

## Compilation

To compile the obfuscator follow these instructions:

**Dependencies**
We recommend using the Ocaml Package Manager `opam` to install these dependencies.
Install opam using the appropriate instructions for your system found [here](https://opam.ocaml.org/doc/Install.html).

  * OCaml version 4.08.1 (`opam switch create 4.08.1`)
  * Coq version 8.10.1 (`opam pin add coq 8.10.1`)
  * dune (`opam install dune`)
  * menhir (`opam install menhir`)
  * OCaml OpenQASM parser (`opam install openQASM`)

Once the dependencies are installed the obfuscator can be compiled by running `make obfuscator` in the parent directory. This will produce an executable in Obfuscator/_build/default.

## Execution

All commands for running the obfuscator and the benchmarks are to be run in the Obfuscator subdirectory.

# Running the obfuscator

In order to use the obfuscator executable run the command

`dune exec ./obfuscator.exe <input_file> <output_file> <output_optimized_with_voqc> --root extraction`

This returns an obfuscated version of `<input_file>` in `<output_file>`, and a version of `<output_file>` that has been further optimized by VOQC in `<output_optimized_with_voqc>`. For instance, to run the obfuscator on the benchmark `tof_5` and obtain the obfuscated output `out.qasm` and subsequently optimized circuit `optimized_voqc.qasm` run the command

`dune exec ./obfuscator.exe benchmarks/Arithmetic_and_Toffoli/tof_5.qasm out.qasm optimized_voqc.qasm --root extraction`

# Running the benchmarks

The benchmark script has the following depencencies.
* **Python**: The benchmarking script requires a working Python 3 distribution that can be obtained [here](https://www.python.org/downloads/). 
* **Qiskit**: The Qiskit package can be installed using any python package manager. If `pip` is used, simply run
`pip install numpy`.
* **staq** : A clone of the staq repository is included under Obfuscator/benchmarks/staq. To build the executable for a UNIX based system with `cmake` and a C++ distribution , run the following commands in this directory

``` sh
cd build
cmake ..
make staq
```
For other systems follow the [installation instructions](https://github.com/softwareQinc/staq) for staq in the directory Obfuscator/benchmarks/staq.

Given all the dependencies the script `Obfuscator/run_benchmark.py` will execute all the benchmarks and return CSV formatted results in a file given as input. Running the command

``` sh
python run_benchmarks.py results.csv
```
in the Obfuscator directory will return the results in results.csv.

## Main components
The main source components of the obfuscator can be found in

* `Obfuscator/src/obfuscator/ReverseOptimizations.v` : contains the main primitives that are combined to form the obfuscator.
* `Obfuscator/extraction/obfuscator.ml` : contains the implementation of the obfuscator executable.
* `Obfuscator/run_benchmarks.py` : contains the code that reproduces the numerical benchmarks found in the paper.
