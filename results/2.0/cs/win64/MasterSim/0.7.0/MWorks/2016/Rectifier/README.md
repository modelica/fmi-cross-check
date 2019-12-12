# Validation of 'Rectifier'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(uDC) = 31.944966765954707
WRMS(iAC[1]) = 145.99059460668985
WRMS(iAC[2]) = 188.09942422271578
WRMS(iAC[3]) = 225.4674450402887
WRMS(uAC[1]) = 250.19966525178702
WRMS(uAC[2]) = 201.05832871067656
WRMS(uAC[3]) = 264.81156760039465
WRMS(Losses) = 130.543311460779
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Do Aug 1 15:49:53 2019
# LastModified:	Do Aug 1 15:50:40 2019

tStart                   0 s
tEnd                     0.1 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.0001 s
hOutputMin               0.001 s
adjustStepSize           no
preventOversteppingOfEndTime yes
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/win64/MWorks/2016/Rectifier/Rectifier.fmu"


```

