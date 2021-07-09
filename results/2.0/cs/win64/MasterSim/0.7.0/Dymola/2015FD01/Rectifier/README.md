# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 1.8427834229648046
WRMS(iAC[1]) = 38.974441996427856
WRMS(iAC[2]) = 50.658141605406826
WRMS(iAC[3]) = 76.54254185134882
WRMS(uAC[1]) = 47.198609995452095
WRMS(uAC[2]) = 64.70848160108054
WRMS(uAC[3]) = 46.84941713650202
WRMS(Losses) = 35.189153155832656
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

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Dymola\2015FD01\Rectifier\Rectifier.fmu"


```

