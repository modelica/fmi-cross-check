# Validation of 'drill'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(axlePosition) = 45.5878371358
WRMS(speedVal2) = 50.1862644675
WRMS(RUN1_rotation) = 113.871879668
WRMS(RUN1_cycleEnd) = 138.531120581
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Do. Juli 18 13:33:46 2019
# LastModified:	Do. Juli 18 16:08:06 2019

tStart                   0 s
tEnd                     12.081 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.001 s
hOutputMin               0.02 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/linux64/ControlBuild/2015_FD01/drill/drill.fmu"


```

