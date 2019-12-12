# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 1.8427838970424377
WRMS(iAC[1]) = 38.974444381370795
WRMS(iAC[2]) = 50.6581450612729
WRMS(iAC[3]) = 76.54254206408739
WRMS(uAC[1]) = 47.19861137067587
WRMS(uAC[2]) = 64.70848141806306
WRMS(uAC[3]) = 46.84941713375189
WRMS(Losses) = 35.189156173289206
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

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Dymola\2017\Rectifier\Rectifier.fmu"


```

