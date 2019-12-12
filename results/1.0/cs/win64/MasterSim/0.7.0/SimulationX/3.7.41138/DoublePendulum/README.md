# Validation of 'DoublePendulum'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(revolute1.w) = 0.15941946829940068
WRMS(revolute2.w) = 0.18399734586640398
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Fr Jul 19 13:10:58 2019
# LastModified:	Fr Jul 19 13:10:58 2019

tStart                   0 s
tEnd                     3 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.0001 s
hOutputMin               0.01 s
adjustStepSize           no
absTol                   1e-06
relTol                   1e-05
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/win64/SimulationX/3.7.41138/DoublePendulum/DoublePendulum.fmu"


```

