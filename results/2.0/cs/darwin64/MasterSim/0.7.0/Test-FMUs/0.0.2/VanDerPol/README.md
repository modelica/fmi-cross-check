# Validation of 'VanDerPol'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(x0) = 41.0172856127
WRMS(x1) = 43.349326433
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 2.000000e+01 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               0.000000e+00 s
hOutputMin           2.000000e-01 s
adjustStepSize       no
absTol               1e-6
relTol               1.000000e-05
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/darwin64/Test-FMUs/0.0.2/VanDerPol/VanDerPol.fmu"


```

