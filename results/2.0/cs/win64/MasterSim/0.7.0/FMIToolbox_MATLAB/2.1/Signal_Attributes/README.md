# Validation of 'Signal_Attributes'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Out1[1]) = 53.358718567379846
WRMS(Out1[2]) = 0.34796027589332695
WRMS(Out2) = 19.303541454033017
WRMS(Out3) = 36.82585852555033
WRMS(Out4) = 0.0
WRMS(Out5) = 0.0
WRMS(Out6[1]) = 0.0
WRMS(Out6[2]) = 0.0
WRMS(Out6[3]) = 0.0
WRMS(Out6[4]) = 0.0
WRMS(Out6[5]) = 0.0
WRMS(Out6[6]) = 0.0
WRMS(Out7) = 48.615982955227935
WRMS(Out8.signal1) = 0.34796027589332695
WRMS(Out8.signal2) = 53.358718567379846
WRMS(Out9) = 31.41863320583498
WRMS(Out10) = 28.484172447696157
WRMS(Out11) = 0.0
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     10.000000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.010000 s
hOutputMin               0.100000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000100
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\FMIToolbox_MATLAB\2.1\Signal_Attributes\Signal_Attributes.fmu"


```

