# Validation of 'MIS_cs'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(volume@INJ01) = 0.401943532516
WRMS(q@INJ01) = 9.65073987368
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.016000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.000010 s
hOutputMin               0.000160 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000010
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/linux64/AMESim/15/MIS_cs/MIS_cs.fmu"


```

