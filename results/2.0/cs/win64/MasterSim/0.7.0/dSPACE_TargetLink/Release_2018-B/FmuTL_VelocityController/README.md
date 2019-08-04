# Validation of 'FmuTL_VelocityController'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Rte_UPiActuator_EcuUPi_OP_SET_upi) = 38.10346920853382
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.200000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.001000 s
hOutputMin               0.002000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000100
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\dSPACE_TargetLink\Release_2018-B\FmuTL_VelocityController\FmuTL_VelocityController.fmu"
simulator 0 0 in_csv #ff0000ff "FmuTL_VelocityController_in.csv"

graph in_csv.Rte_RefVelocitySensor_EcuRefVelocity_OP_GET_ref_velocity slave1.Rte_RefVelocitySensor_EcuRefVelocity_OP_GET_ref_velocity
graph in_csv.Rte_VelocitySensor_EcuVelocity_OP_GET_velocity slave1.Rte_VelocitySensor_EcuVelocity_OP_GET_velocity

```

