# Validation of 'fuelrail_cs'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(p1@general_hydraulic_chamber) = 1.94986849575
WRMS(p1@hydraulic_4) = 88.0827393498
WRMS(q@volumesensor) = 93.1881677371
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.030000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.000001 s
hOutputMin               0.000300 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.000010
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/linux64/AMESim/15/fuelrail_cs/fuelrail_cs.fmu"


```

