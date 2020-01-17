# Validation of 'PneumaticActuator'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(PistonPosition) = 4.9463998071107715
WRMS(PressureExtend) = 2.0246157668504354
WRMS(PressureRetract) = 1.9913473211786068
WRMS(TemperatureExtend) = 3.096838972682828
WRMS(TemperatureRetract) = 7.010360368357393
WRMS(FlowExtend) = 29.15341658667233
WRMS(FlowRetract) = 32.896117691832735
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     30.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.010000 s
hOutputMin               0.300000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.001000
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\Easy5\2017.1\PneumaticActuator\PneumaticActuator.fmu"
simulator 0 0 in_csv #ff0000ff "PneumaticActuator_in.csv"

graph in_csv.SetPoint slave1.SetPoint

```

