# Using the example from https://coq.inria.fr/refman/practical-tools/utilities.html#reusing-extending-the-generated-makefile

# KNOWNTARGETS will not be passed along to CoqMakefile
KNOWNTARGETS := CoqMakefile all examples mapper obfuscator clean

# KNOWNFILES will not get implicit targets from the final rule, and so
# depending on them won't invoke the submake
# Warning: These files get declared as PHONY, so any targets depending
# on them always get rebuilt
KNOWNFILES := Makefile _CoqProject

.DEFAULT_GOAL := invoke-coqmakefile

# CoqMakefile: Makefile _CoqProject
# 	# git submodule init
# 	# git submodule update
# 	$(COQBIN)coq_makefile -f _CoqProject -o CoqMakefile

invoke-coqmakefile: CoqMakefile
	$(MAKE) --no-print-directory -f CoqMakefile $(filter-out $(KNOWNTARGETS),$(MAKECMDGOALS))

.PHONY: invoke-coqmakefile $(KNOWNFILES)

###########################################################
##		      Your targets here			 ##
###########################################################

QWIRE := externals/QWIRE
SQIR := SQIR/src
# examples := SQIR/examples
obfuscator := Obfuscator/src/obfuscator
# mapper := Obfuscator/src/mapper

COQ_OPTS := -R . Top

all:  obfuscator $(obfuscator)/PropagateClassical.vo $(obfuscator)/RemoveZRotationBeforeMeasure.vo Obfuscator/src/experimental/BooleanCompilation.vo

examples: invoke-coqmakefile $(examples)/Deutsch.vo $(examples)/DeutschJozsa.vo $(examples)/GHZ.vo $(examples)/Superdense.vo $(examples)/Teleport.vo

mapper: invoke-coqmakefile $(mapper)/SimpleMapping.vo $(mapper)/MappingExamples.vo

obfuscator: invoke-coqmakefile $(obfuscator)/ReverseOptimizations.vo Obfuscator/extraction/obfuscator.ml
	cd Obfuscator/extraction && ./extract.sh
	dune build obfuscator.exe --root Obfuscator/extraction

voqc: Obfuscator/extraction/voqc.ml Obfuscator/extraction/_build/default/voqc.exe

Obfuscator/extraction/_build/default/voqc.exe:
	dune build voqc.exe --root Obfuscator/extraction

# Built by 'make examples'

SQIR/examples/Deutsch.vo: $(examples)/Deutsch.v $(SQIR)/UnitarySem.vo $(QWIRE)/Dirac.vo $(QWIRE)/Proportional.vo
	coqc $(COQ_OPTS) $(examples)/Deutsch.v

SQIR/examples/DeutschJozsa.vo: $(examples)/DeutschJozsa.v $(SQIR)/UnitarySem.vo $(QWIRE)/Dirac.vo
	coqc $(COQ_OPTS) $(examples)/DeutschJozsa.v

SQIR/examples/GHZ.vo: $(examples)/GHZ.v $(SQIR)/UnitarySem.vo $(QWIRE)/Dirac.vo
	coqc $(COQ_OPTS) $(examples)/GHZ.v

SQIR/examples/Superdense.vo: $(examples)/Teleport.v $(SQIR)/UnitarySem.vo $(QWIRE)/Dirac.vo
	coqc $(COQ_OPTS) $(examples)/Superdense.v

SQIR/examples/Teleport.vo: $(examples)/Teleport.v $(SQIR)/UnitarySem.vo $(SQIR)/DensitySem.vo $(SQIR)/NDSem.vo $(QWIRE)/Dirac.vo $(QWIRE)/Proportional.vo
	coqc $(COQ_OPTS) $(examples)/Teleport.v

# Built by 'make mapper'

Obfuscator/src/mapper/SimpleMapping.vo: $(SQIR)/UnitarySem.vo $(obfuscator)/Equivalences.vo
	coqc $(COQ_OPTS) $(mapper)/SimpleMapping.v

Obfuscator/src/mapper/MappingExamples.vo: $(mapper)/SimpleMapping.vo
	coqc $(COQ_OPTS) $(mapper)/MappingExamples.v

# Built by 'make obfuscator'

Obfuscator/src/obfuscator/Equivalences.vo: $(obfuscator)/Equivalences.v $(SQIR)/UnitarySem.vo
	coqc $(COQ_OPTS) $(obfuscator)/Equivalences.v

Obfuscator/src/obfuscator/GateCancellation.vo: $(obfuscator)/GateCancellation.v $(obfuscator)/Equivalences.vo $(obfuscator)/RzkGateSet.vo
	coqc $(COQ_OPTS) $(obfuscator)/GateCancellation.v

Obfuscator/src/obfuscator/HadamardReduction.vo: $(obfuscator)/HadamardReduction.v $(obfuscator)/Equivalences.vo $(obfuscator)/RzkGateSet.vo
	coqc $(COQ_OPTS) $(obfuscator)/HadamardReduction.v

Obfuscator/src/obfuscator/ListRepresentation.vo: $(obfuscator)/ListRepresentation.v $(QWIRE)/Proportional.vo $(obfuscator)/Equivalences.vo $(SQIR)/DensitySem.vo
	coqc $(COQ_OPTS) $(obfuscator)/ListRepresentation.v

Obfuscator/src/obfuscator/NotPropagation.vo: $(obfuscator)/NotPropagation.v $(obfuscator)/Equivalences.vo $(obfuscator)/RzkGateSet.vo
	coqc $(COQ_OPTS) $(obfuscator)/NotPropagation.v

Obfuscator/src/obfuscator/Optimize.vo: $(obfuscator)/Optimize.v $(obfuscator)/NotPropagation.vo $(obfuscator)/HadamardReduction.vo $(obfuscator)/GateCancellation.vo $(obfuscator)/RotationMerging.vo
	coqc $(COQ_OPTS) $(obfuscator)/Optimize.v

Obfuscator/src/obfuscator/RzkGateSet.vo: $(obfuscator)/RzkGateSet.v $(obfuscator)/Equivalences.vo $(obfuscator)/ListRepresentation.vo $(SQIR)/DensitySem.vo
	coqc $(COQ_OPTS) $(obfuscator)/RzkGateSet.v

Obfuscator/src/obfuscator/RotationMerging.vo: $(obfuscator)/RotationMerging.v $(obfuscator)/RzkGateSet.vo $(SQIR)/ClassicalStates.vo
	coqc $(COQ_OPTS) $(obfuscator)/RotationMerging.v

Obfuscator/src/obfuscator/ReverseOptimizations.vo: $(obfuscator)/ReverseOptimizations.v $(obfuscator)/NotPropagation.vo $(obfuscator)/HadamardReduction.vo $(obfuscator)/GateCancellation.vo $(obfuscator)/RotationMerging.vo $(obfuscator)/Equivalences.vo $(obfuscator)/RzkGateSet.vo $(obfuscator)/Optimize.vo
	coqc $(COQ_OPTS) $(obfuscator)/ReverseOptimizations.v

# Misc. files built by 'make all'

Obfuscator/src/obfuscator/PropagateClassical.vo: $(obfuscator)/PropagateClassical.v $(obfuscator)/RzkGateSet.vo $(SQIR)/DensitySem.vo
	coqc $(COQ_OPTS) $(obfuscator)/PropagateClassical.v

Obfuscator/src/obfuscator/RemoveZRotationBeforeMeasure.vo: $(obfuscator)/RemoveZRotationBeforeMeasure.v $(obfuscator)/RzkGateSet.vo $(SQIR)/DensitySem.vo
	coqc $(COQ_OPTS) $(obfuscator)/RemoveZRotationBeforeMeasure.v

Obfuscator/src/experimental/BooleanCompilation.vo: Obfuscator/src/experimental/BooleanCompilation.v $(SQIR)/ClassicalStates.vo $(QWIRE)/Dirac.vo
	coqc $(COQ_OPTS) Obfuscator/src/experimental/BooleanCompilation.v

# Using a custom clean target to remove files from subdirectories
clean:
	rm -rf CoqMakefile CoqMakefile.conf {externals/QWIRE,SQIR/*,Obfuscator/src/*}/{*.vo,*.glob,.*.aux} .lia.cache Obfuscator/extraction/_build

# This should be the last rule, to handle any targets not declared above
#%: invoke-coqmakefile
#	@true
