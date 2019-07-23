# Validation of 'fullRobot'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(axis1_w) = 0.5593101515472733
WRMS(axis2_w) = 0.6302427933649664
WRMS(axis3_w) = 0.6386870702113253
WRMS(axis4_w) = 2.5867825798303206
WRMS(axis5_w) = 2.1433264068763296
WRMS(axis6_w) = 3.6708010342908715
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 1.000000e+00 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               0.000000e+00 s
hOutputMin           1.000000e-02 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-04
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\Dymola\2016FD01\fullRobot\fullRobot.fmu"


```

