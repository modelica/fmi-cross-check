# Validation of 'inc'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(counter) = 25.642396831460832
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Do Aug 1 15:52:23 2019
# LastModified:	Do Aug 1 16:04:36 2019

tStart                   0 s
tEnd                     12 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   1e-07 s
hOutputMin               0.12 s
adjustStepSize           no
preventOversteppingOfEndTime yes
absTol                   1e-06
relTol                   0.01
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/FMUSDK/2.0.3/inc/inc.fmu"


```

