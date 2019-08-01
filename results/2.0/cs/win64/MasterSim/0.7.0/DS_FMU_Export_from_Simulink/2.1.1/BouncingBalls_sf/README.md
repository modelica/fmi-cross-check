# Validation of 'BouncingBalls_sf'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Ball1_pos) = 2.7556489320285205
WRMS(Ball2_pos) = 2.424897343906637
WRMS(Ball1_vel) = 54.11595203798009
WRMS(Ball2_vel) = 56.117201134511916
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     10.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.001000 s
hOutputMin               0.100000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\DS_FMU_Export_from_Simulink\2.1.1\BouncingBalls_sf\BouncingBalls_sf.fmu"


```

