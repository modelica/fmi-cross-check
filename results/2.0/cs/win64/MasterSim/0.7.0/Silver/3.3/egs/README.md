# Validation of 'egs'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(egsCarSpeed) = 1.6275930449871214
WRMS(egsGear) = 20.85269947741078
WRMS(egsTargetGear) = 13.383319730846848
WRMS(valves_eds) = 0.0
WRMS(valves_eds1) = 0.0
WRMS(valves_eds2) = 14.446836888341323
WRMS(valves_eds3) = 18.321381355777525
WRMS(valves_eds4) = 0.0
WRMS(valves_eds5) = 14.805128418409186
WRMS(valves_mv1) = 84.57802433452989
WRMS(valves_mv2) = 60.17503323172012
WRMS(valves_mv3) = 0.0
WRMS(tShiftStart) = 13.051781822536281
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     33.560000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.010000 s
hOutputMin               0.335600 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.010000
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Silver\3.3\egs\egs.fmu"
simulator 0 0 in_csv #ff0000ff "egs_in.csv"

graph in_csv.accelPedal slave1.accelPedal
graph in_csv.k15 slave1.k15
graph in_csv.prnd slave1.prnd
graph in_csv.nAtIn slave1.nAtIn
graph in_csv.nAtOut slave1.nAtOut

```

