# Validation of 'Linear_Pos'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(PistonPosition) = 0.3861071186242311
WRMS(ExtendPressure) = 2.0544126934119427
WRMS(RetractPressure) = 3.458505818774847
WRMS(ExtendFlow) = 7.886438384110617
WRMS(RetractFlow) = 14.332121949267641
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     8.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.001000 s
hOutputMin               0.080000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.001000
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Easy5\2017.1\Linear_Pos\Linear_Pos.fmu"
simulator 0 0 in_csv #ff0000ff "Linear_Pos_in.csv"

graph in_csv.Command slave1.Command

```

