# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 1.8427822646691332
WRMS(iAC[1]) = 38.97436752119164
WRMS(iAC[2]) = 50.658249730324336
WRMS(iAC[3]) = 76.54296979026358
WRMS(uAC[1]) = 47.19880402663914
WRMS(uAC[2]) = 64.70829562136942
WRMS(uAC[3]) = 46.849276210805705
WRMS(Losses) = 35.189265894236534
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.100000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.000000 s
hOutputMin               0.001000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000100
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\CATIA\R2016x\Rectifier\Rectifier.fmu"


```

