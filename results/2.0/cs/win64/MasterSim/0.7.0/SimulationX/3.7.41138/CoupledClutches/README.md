# Validation of 'CoupledClutches'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(J1.w) = 0.5474846420596704
WRMS(J2.w) = 0.7419569057594273
WRMS(J3.w) = 0.7762330477297313
WRMS(J4.w) = 4.055681788317064
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Fr Jul 19 13:05:52 2019
# LastModified:	Fr Jul 19 13:31:30 2019

tStart                   0 s
tEnd                     1.5 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.0001 s
hOutputMin               0.001 s
adjustStepSize           no
absTol                   1e-06
relTol                   1e-05
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   no

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/SimulationX/3.7.41138/CoupledClutches/CoupledClutches.fmu"
simulator 1 0 in_csv #ff0000ff "CoupledClutches_in.csv"

graph in_csv.clutch3.f_normalized slave1.clutch3.f_normalized

```

