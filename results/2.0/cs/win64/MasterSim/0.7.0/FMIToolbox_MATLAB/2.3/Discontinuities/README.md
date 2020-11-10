# Validation of 'Discontinuities'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Out1[1]) = 35.21563001030157
WRMS(Out1[2]) = 53.07678563288166
WRMS(Out2) = 3.6378489912829357
WRMS(Out3) = 8.135534510732263
WRMS(Out4) = 53.358718567379846
WRMS(Out5) = 26.02061708285615
WRMS(Out6) = 78.70073820364838
WRMS(Out7) = 11.412376827156645
WRMS(Out8) = 83.55909411885916
WRMS(Out9) = 51.33763184758951
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
hStart                   0.010000 s
hOutputMin               0.100000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000010
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\FMIToolbox_MATLAB\2.3\Discontinuities\Discontinuities.fmu"


```

