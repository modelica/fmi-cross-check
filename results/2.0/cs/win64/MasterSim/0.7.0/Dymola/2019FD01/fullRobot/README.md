# Validation of 'fullRobot'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(axis1_w) = 0.5591447921149562
WRMS(axis2_w) = 0.6338667284091659
WRMS(axis3_w) = 0.6442646028440573
WRMS(axis4_w) = 2.6087572210029593
WRMS(axis5_w) = 2.1896281912354927
WRMS(axis6_w) = 3.7025896680112917
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Fr Jul 19 15:57:19 2019
# LastModified:	Fr Jul 19 15:57:19 2019

tStart                   0 s
tEnd                     1 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0 s
hOutputMin               0.01 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/Dymola/2019FD01/fullRobot/fullRobot.fmu"


```

