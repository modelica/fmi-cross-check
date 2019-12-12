# Validation of 'vanDerPol'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(x0) = 7.251973912297454
WRMS(der(x0)) = 4.603098669536256
WRMS(x1) = 4.603098669536256
WRMS(der(x1)) = 4.800341638591288
WRMS(mu) = 0.0
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     5.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.100000 s
hOutputMin               0.050000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.010000
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\FMUSDK\2.0.3\vanDerPol\vanDerPol.fmu"


```

