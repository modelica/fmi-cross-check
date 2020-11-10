# Validation of 'Engine1b'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(Piston.body.r_0[2]) = 14.353565507975857
WRMS(Inertia.w) = 20.82352444314517
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```

tStart                   0.000000 s
tEnd                     0.500000 s
hMax                     30 min
hMin                     1e-6 s
hFallBackLimit           0.001 s
hStart                   0.000000 s
hOutputMin               0.005000 s
adjustStepSize           no
absTol                   1e-6
relTol                   0.000010
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "..\..\fmi-cross-check\fmus\2.0\cs\win64\SimulationX\3.7.41138\Engine1b\Engine1b.fmu"


```

