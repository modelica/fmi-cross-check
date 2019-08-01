# Validation of 'Circle_SWC'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Circle_SWC_output_Coords.x) = 9.347505256583758e-06
WRMS(Circle_SWC_output_Coords.y) = 8.987313648544923e-06
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     4.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.100000 s
hOutputMin               0.040000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.010000
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\ASim\2019FD01\Circle_SWC\Circle_SWC.fmu"


```

