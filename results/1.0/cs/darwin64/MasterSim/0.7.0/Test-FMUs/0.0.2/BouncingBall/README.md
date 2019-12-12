# Validation of 'BouncingBall'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(h) = 8.18792984662
WRMS(v) = 107.768632443
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Do. Juli 18 09:38:02 2019
# LastModified:	Do. Juli 18 09:54:26 2019

tStart                   0 s
tEnd                     3 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.001 s
hOutputMin               0.001 s
adjustStepSize           no
absTol                   1e-06
relTol                   1e-05
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/darwin64/Test-FMUs/0.0.2/BouncingBall/BouncingBall.fmu"


```

