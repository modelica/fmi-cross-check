# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 1.766509182791299
WRMS(iAC[1]) = 31.144606533621523
WRMS(iAC[2]) = 38.592084792522506
WRMS(iAC[3]) = 59.19807028222485
WRMS(uAC[1]) = 35.19527581599072
WRMS(uAC[2]) = 39.293193485748446
WRMS(uAC[3]) = 31.602206451853707
WRMS(Losses) = 31.00584307048773
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
hStart               2.000000e-07 s
hOutputMin           1.000000e-03 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-04
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\MWorks\2016\Rectifier\Rectifier.fmu"


```

