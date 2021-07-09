# Validation of 'Continuous'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Out1) = 0.2432133370565813
WRMS(Out2[1]) = 0.044508776547113445
WRMS(Out2[2]) = 0.2432133370565813
WRMS(Out3) = 0.12677101935076449
WRMS(Out4) = 0.380573566201363
WRMS(Out5) = 0.23946062199087953
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 1.000000e+01 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               1.000000e-02 s
hOutputMin           1.000000e-01 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-05
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\FMIToolbox_MATLAB\2.3\Continuous\Continuous.fmu"


```

