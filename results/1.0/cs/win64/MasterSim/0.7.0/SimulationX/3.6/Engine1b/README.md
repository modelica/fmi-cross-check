# Validation of 'Engine1b'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Piston.frame_a.r_0[1]) = 0.0
WRMS(Piston.frame_a.r_0[2]) = 21.87092105967158
WRMS(Piston.frame_a.r_0[3]) = 0.0
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 5.000000e-01 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               1.000000e-06 s
hOutputMin           5.000000e-03 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-05
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\SimulationX\3.6\Engine1b\Engine1b.fmu"


```

