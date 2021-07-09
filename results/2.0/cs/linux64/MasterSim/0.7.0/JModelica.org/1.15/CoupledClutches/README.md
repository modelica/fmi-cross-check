# Validation of 'CoupledClutches'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

```
WRMS(freqHz) = 0.0
WRMS(T2) = 0.0
WRMS(clutch1.phi_rel) = 0.0236391416484
WRMS(clutch1.w_rel) = 0.0656576005473
WRMS(clutch2.phi_rel) = 0.0466095828284
WRMS(clutch2.w_rel) = 0.00250740502055
WRMS(clutch3.phi_rel) = 0.0
WRMS(clutch3.w_rel) = 0.0
WRMS(J1.phi) = 0.0106469433519
WRMS(J1.w) = 0.0571466095951
```

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Mi. Juli 17 20:28:21 2019
# LastModified:	Do. Juli 18 14:58:37 2019

tStart                   0 s
tEnd                     1.5 s
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

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/2.0/cs/linux64/JModelica.org/1.15/CoupledClutches/CoupledClutches.fmu"
simulator 0 0 in_csv #ff0000ff "CoupledClutches_in.csv"

graph in_csv.u slave1.u

```

