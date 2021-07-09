# Validation of 'CoupledClutches'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(outputs[1]) = 0.439079793313
WRMS(outputs[2]) = 3.04672984022
WRMS(outputs[3]) = 3.16000416857
WRMS(outputs[4]) = 10.8890077853
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 1.500000e+00 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               1.000000e-02 s
hOutputMin           1.500000e-02 s
adjustStepSize       no
absTol               1e-6
relTol               0.000000e+00
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/darwin64/MapleSim/2018/CoupledClutches/CoupledClutches.fmu"
simulator 0 0 in_csv #ff0000ff "CoupledClutches_in.csv"

graph in_csv.inputs slave1.inputs

```

