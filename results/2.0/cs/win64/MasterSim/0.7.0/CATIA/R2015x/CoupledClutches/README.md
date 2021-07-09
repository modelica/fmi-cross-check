# Validation of 'CoupledClutches'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(J1_w) = 0.6356507321804515
WRMS(J2_w) = 0.7399434152621654
WRMS(J3_w) = 1.0905096403368613
WRMS(J4_w) = 2.7120773158546703
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     1.500000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.000000 s
hOutputMin               0.015000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000100
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\CATIA\R2015x\CoupledClutches\CoupledClutches.fmu"
simulator 0 0 in_csv #ff0000ff "CoupledClutches_in.csv"

graph in_csv.step2 slave1.step2

```

