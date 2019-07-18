# Validation of 'PID_Controller'

## Variables
Weighted-root-mean-square norm with RelTol = 1e-3 and AbsTol = 1e-3, where
AbsTol is based on max. magnitude of reference values.

WRMS(driveAngle) = 0.0
WRMS(spring.w_rel) = 8.36283200588
WRMS(PI.I.y) = 0.0583771460392
WRMS(inertia1.phi) = 0.146890063045
WRMS(spring.phi_rel) = 0.0325878961339
WRMS(integrator.y) = 0.184988973441
WRMS(inertia1.w) = 0.0921935862856

## MasterSim project file

Below is the project file that was used to successfully simulation the test case.
Mind: project file is copied from working directory, hence relative path to fmu file.

```
# Created:	Mi. Juli 17 20:28:00 2019
# LastModified:	Do. Juli 18 12:18:50 2019

tStart                   0 s
tEnd                     4 s
hMax                     30 min
hMin                     1e-06 s
hFallBackLimit           0.001 s
hStart                   0.001 s
hOutputMin               0.001 s
adjustStepSize           no
absTol                   1e-06
relTol                   0.0001
MasterMode               GAUSS_JACOBI
ErrorControlMode         NONE
maxIterations            1
writeInternalVariables   yes

simulator 0 0 slave1 #ffff8c00 "../../fmi-cross-check/fmus/1.0/cs/linux64/JModelica.org/1.15/PID_Controller/PID_Controller.fmu"


```

