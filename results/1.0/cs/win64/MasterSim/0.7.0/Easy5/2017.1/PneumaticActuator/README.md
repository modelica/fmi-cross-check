# Validation of 'PneumaticActuator'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(PistonPosition) = 4.946398239258474
WRMS(PressureExtend) = 2.024609914360546
WRMS(PressureRetract) = 1.991344687221525
WRMS(TemperatureExtend) = 3.0968388430063407
WRMS(TemperatureRetract) = 7.010360952755603
WRMS(FlowExtend) = 29.15341618582455
WRMS(FlowRetract) = 32.89611618383462
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart               0.000000e+00 s
tEnd                 3.000000e+01 s
hMax                 30 min
hMin                 1e-6 s
hFallBackLimit       0.001 s
hStart               1.000000e-02 s
hOutputMin           3.000000e-01 s
adjustStepSize       no
absTol               1e-06
relTol               1.000000e-03
MasterMode           GAUSS_JACOBI
ErrorControlMode     NONE
maxIterations        1

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\1.0\cs\win64\Easy5\2017.1\PneumaticActuator\PneumaticActuator.fmu"
simulator 0 0 in_csv #ff0000ff "PneumaticActuator_in.csv"

graph in_csv.SetPoint slave1.SetPoint

```

