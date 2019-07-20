# Validation of 'Engine1b'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Piston_r2) = 14.386412480746484
WRMS(Inertia_w) = 9.937485534218672
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Fr Jul 19 15:56:37 2019
# LastModified:	Fr Jul 19 15:56:37 2019

tStart                   0 s
tEnd                     0.5 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0 s
hOutputMin               0.001 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/Dymola/2019FD01/Engine1b/Engine1b.fmu"


```

