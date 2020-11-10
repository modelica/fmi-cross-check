# Validation of 'Fmucontroller'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Sa1_UPI) = 56.91408208865728
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.350000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.001000 s
hOutputMin               0.003500 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000100
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\dSPACE_TargetLink\Release_2018-B\Fmucontroller\Fmucontroller.fmu"
simulator 0 0 in_csv #ff0000ff "Fmucontroller_in.csv"

graph in_csv.Sa1_POS slave1.Sa1_POS
graph in_csv.Sa1_REF slave1.Sa1_REF

```

