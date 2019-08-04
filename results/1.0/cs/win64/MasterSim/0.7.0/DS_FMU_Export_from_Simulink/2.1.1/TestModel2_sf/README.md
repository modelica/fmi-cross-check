# Validation of 'TestModel2_sf'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(y1) = 154.60590125091662
WRMS(y2) = 164.88225005876893
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
hStart               1.000000e-03 s
hOutputMin           1.000000e-01 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-03
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\DS_FMU_Export_from_Simulink\2.1.1\TestModel2_sf\TestModel2_sf.fmu"
simulator 0 0 in_csv #ff0000ff "TestModel2_sf_in.csv"

graph in_csv.u1 slave1.u1

```

