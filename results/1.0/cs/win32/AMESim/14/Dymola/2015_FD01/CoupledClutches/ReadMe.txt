Test case     : CoupledClutches.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-19
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Co-simulation, version 1.0, running on win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPCoupledClutches.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPCoupledClutches.c -Fowin32\
CSIMPCoupledClutches.c
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1070) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1077) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPCoupledClutches.c(1077) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPCoupledClutches.c(1077) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Warning(s):
Variable J1.flange_a.phi is declared as an alias of J1.phi but they do not match
Variable J1.flange_b.phi is declared as an alias of J1.phi but they do not match
Variable torque.flange.phi is declared as an alias of J1.phi but they do not match
Variable torque.support.phi is declared as an alias of fixed.phi0 but they do not match
Variable torque.phi_support is declared as an alias of fixed.phi0 but they do not match
Variable clutch1.flange_a.phi is declared as an alias of J1.phi but they do not match
Variable clutch1.flange_b.phi is declared as an alias of J2.phi but they do not match
Variable clutch1.mue0 is declared as an alias of clutch1.mue_pos[1, 2] but they do not match
Variable J2.flange_a.phi is declared as an alias of J2.phi but they do not match
Variable J2.flange_b.phi is declared as an alias of J2.phi but they do not match
Variable der(J2.phi) is declared as an alias of J2_w but they do not match
Variable clutch2.flange_a.phi is declared as an alias of J2.phi but they do not match
Variable clutch2.flange_b.phi is declared as an alias of J3.phi but they do not match
Variable clutch2.mue0 is declared as an alias of clutch2.mue_pos[1, 2] but they do not match
Variable clutch2.f_normalized is declared as an alias of step1.y but they do not match
Variable J3.flange_a.phi is declared as an alias of J3.phi but they do not match
Variable J3.flange_b.phi is declared as an alias of J3.phi but they do not match
Variable der(J3.phi) is declared as an alias of J3_w but they do not match
Variable clutch3.flange_a.phi is declared as an alias of J3.phi but they do not match
Variable clutch3.flange_b.phi is declared as an alias of J4.phi but they do not match
Variable clutch3.mue0 is declared as an alias of clutch3.mue_pos[1, 2] but they do not match
Variable clutch3.f_normalized is declared as an alias of step2 but they do not match
Variable J4.flange_a.phi is declared as an alias of J4.phi but they do not match
Variable J4.flange_b.phi is declared as an alias of J4.phi but they do not match
Variable der(J4.phi) is declared as an alias of J4_w but they do not match
Variable fixed.flange.phi is declared as an alias of fixed.phi0 but they do not match
Variable speedSensor.flange.phi is declared as an alias of J1.phi but they do not match
Variable der(speedSensor.flange.phi) is declared as an alias of J1_w but they do not match
Variable speedSensor.w is declared as an alias of J1_w but they do not match
Variable speedSensor1.flange.phi is declared as an alias of J2.phi but they do not match
Variable der(speedSensor1.flange.phi) is declared as an alias of J2_w but they do not match
Variable speedSensor1.w is declared as an alias of J2_w but they do not match
Variable speedSensor2.flange.phi is declared as an alias of J3.phi but they do not match
Variable der(speedSensor2.flange.phi) is declared as an alias of J3_w but they do not match
Variable speedSensor2.w is declared as an alias of J3_w but they do not match
Variable speedSensor3.flange.phi is declared as an alias of J4.phi but they do not match
Variable der(speedSensor3.flange.phi) is declared as an alias of J4_w but they do not match
Variable speedSensor3.w is declared as an alias of J4_w but they do not match
Creating C:\c32\Dymola\2015_FD01\CoupledClutches/./submodels/CSIMPCoupledClutches.spe submodel file...
Creating C:\c32\Dymola\2015_FD01\CoupledClutches/./submodels/CSIMPCoupledClutches.c submodel source file...
Icon fmuin001out004 added to C:\c32\Dymola\2015_FD01\CoupledClutches/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 1.5 s
Print interval   : 0.001
Integrator type  : fixed step integrator
Step size        : 0.001 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
