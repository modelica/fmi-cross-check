# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 1.8115863884450185
WRMS(iAC[1]) = 36.01168444804717
WRMS(iAC[2]) = 45.76010523658054
WRMS(iAC[3]) = 68.28442541124905
WRMS(uAC[1]) = 44.5041556503458
WRMS(uAC[2]) = 57.399196259245166
WRMS(uAC[3]) = 42.46876472130757
WRMS(Losses) = 33.27540075191158
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 1.000000e-01 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               0.000000e+00 s
hOutputMin           1.000000e-03 s
adjustStepSize       no
absTol               1e-6
relTol               1.000000e-04
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Dymola\2019FD01\Rectifier\Rectifier.fmu"


```

