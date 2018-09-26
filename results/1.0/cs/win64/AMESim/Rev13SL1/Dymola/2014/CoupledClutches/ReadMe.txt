Test case : CoupledClutches.fmu
Done with : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-Jan-31
Platform : Windows 7 64 bit using standard32 platform type
Compiler : Microsoft Visual Studio 2005 Pro 64 bit

Import process:
fmi_import_compiler -ccopt -win64 CoupledClutches.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPCoupledClutches.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPCoupledClutches.c -Fowin64\
CSIMPCoupledClutches.c
CSIMPCoupledClutches.c(399) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(440) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(455) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(460) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1087) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPCoupledClutches.c(1094) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPCoupledClutches.c(1094) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPCoupledClutches.c(1094) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
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
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\CoupledClutches/./submodels/CSIMPCoupledClutches.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\CoupledClutches/./submodels/CSIMPCoupledClutches.c submodel source file...
Icon fmuin001out004 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\CoupledClutches/./Icons/fmi.ico

Simulation parameters:
Simulation time : 0 s to 1.5 s
Integrator type : Euler fixed step integrator
Fixed step size : 0.0030000000260770321 s

Comments and remarks can be addressed to support.fr@lmsintl.com
