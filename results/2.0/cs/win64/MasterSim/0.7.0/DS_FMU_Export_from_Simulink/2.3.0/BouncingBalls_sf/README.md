# Validation of 'BouncingBalls_sf'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Ball1_pos) = 18.502524601830356
WRMS(Ball2_pos) = 18.456162730460335
WRMS(Ball1_vel) = 59.499155771216536
WRMS(Ball2_vel) = 61.32498296519775
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

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\DS_FMU_Export_from_Simulink\2.3.0\BouncingBalls_sf\BouncingBalls_sf.fmu"


```

