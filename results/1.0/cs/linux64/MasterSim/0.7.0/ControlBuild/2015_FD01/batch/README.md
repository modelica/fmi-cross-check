# Validation of 'batch'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(tankLevel) = 1.0282400453
WRMS(tankLevel2) = 1.67241628274
WRMS(tankLevel3) = 0.542284483792
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Do. Juli 18 13:34:11 2019
# LastModified:	Do. Juli 18 13:34:11 2019

tStart                   0 s
tEnd                     300 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.01 s
hOutputMin               0.1 s
adjustStepSize           no
absTol                   1e-06
relTol                   1
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/linux64/ControlBuild/2015_FD01/batch/batch.fmu"


```

