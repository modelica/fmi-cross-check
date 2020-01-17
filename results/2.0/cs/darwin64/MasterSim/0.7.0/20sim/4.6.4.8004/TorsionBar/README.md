# Validation of 'TorsionBar'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(LoadDiskRev) = 3.56098581825e-05
WRMS(MotorDiskRev) = 2.67843747075e-07
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Mo. Juli 22 19:14:17 2019
# LastModified:	Mo. Juli 22 19:14:20 2019

tStart                   0 s
tEnd                     12.5664 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.001 s
hOutputMin               0.1 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.1
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/darwin64/20sim/4.6.4.8004/TorsionBar/TorsionBar.fmu"


```

