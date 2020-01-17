# Validation of 'CoupledClutches'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(J1_w) = 0.478210957508296
WRMS(J2_w) = 0.309441155236518
WRMS(J3_w) = 0.3252035147935851
WRMS(J4_w) = 1.761847965186758
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Fr Jul 19 15:55:25 2019
# LastModified:	Fr Jul 19 15:55:25 2019

tStart                   0 s
tEnd                     1.5 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0 s
hOutputMin               0.001 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/Dymola/2019FD01/CoupledClutches/CoupledClutches.fmu"
simulator 1 0 in_csv #ff0000ff "CoupledClutches_in.csv"

graph in_csv.step2 slave1.step2

```

