# Validation of 'Compute'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(y_0) = 0.42831005442736486
WRMS(y_1) = 3.5813606682609525
WRMS(y_2) = 7.856367473715714
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 4.000000e+00 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               1.000000e-02 s
hOutputMin           4.000000e-02 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-02
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\Silver\3.3\Compute\Compute.fmu"
simulator 0 0 in_csv #ff0000ff "Compute_in.csv"

graph in_csv.x_0 slave1.x_0
graph in_csv.x_1 slave1.x_1
graph in_csv.x_2 slave1.x_2

```

