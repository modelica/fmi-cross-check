# Validation of 'ControlledTemperature'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(TAmb) = 0.0
WRMS(TDif) = 0.0
WRMS(heatCapacitor.T) = 0.00847533187338
WRMS(TRes) = 0.00847533187338
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Mi. Juli 17 20:28:36 2019
# LastModified:	Mi. Juli 17 20:58:32 2019

tStart                   0 s
tEnd                     10 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.0001 s
hOutputMin               0.01 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/linux64/JModelica.org/1.15/ControlledTemperature/ControlledTemperature.fmu"


```

