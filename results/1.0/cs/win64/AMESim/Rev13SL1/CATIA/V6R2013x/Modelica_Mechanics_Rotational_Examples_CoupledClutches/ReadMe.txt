Test case   : Modelica_Mechanics_Rotational_Examples_CoupledClutches.fmu
Done with   : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-JAN-29
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 64 bit

Import process:

fmi_import_compiler -ccopt -win64 Modelica_Mechanics_Rotational_Examples_CoupledClutches.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Model description not ok. There are some error(s).
Error(s):
Variable J1.stateSelect is a constant but does not have a start value
Variable torque.useSupport is a constant but does not have a start value
Variable clutch1.phi_nominal is a constant but does not have a start value
Variable clutch1.stateSelect is a constant but does not have a start value
Variable clutch1.Unknown is a constant but does not have a start value
Variable clutch1.Free is a constant but does not have a start value
Variable clutch1.Forward is a constant but does not have a start value
Variable clutch1.Stuck is a constant but does not have a start value
Variable clutch1.Backward is a constant but does not have a start value
Variable clutch1.unitAngularAcceleration is a constant but does not have a start value
Variable clutch1.unitTorque is a constant but does not have a start value
Variable clutch1.useHeatPort is a constant but does not have a start value
Variable sin1.pi is a constant but does not have a start value
Variable J2.stateSelect is a constant but does not have a start value
Variable clutch2.phi_nominal is a constant but does not have a start value
Variable clutch2.stateSelect is a constant but does not have a start value
Variable clutch2.Unknown is a constant but does not have a start value
Variable clutch2.Free is a constant but does not have a start value
Variable clutch2.Forward is a constant but does not have a start value
Variable clutch2.Stuck is a constant but does not have a start value
Variable clutch2.Backward is a constant but does not have a start value
Variable clutch2.unitAngularAcceleration is a constant but does not have a start value
Variable clutch2.unitTorque is a constant but does not have a start value
Variable clutch2.useHeatPort is a constant but does not have a start value
Variable J3.stateSelect is a constant but does not have a start value
Variable clutch3.phi_nominal is a constant but does not have a start value
Variable clutch3.stateSelect is a constant but does not have a start value
Variable clutch3.Unknown is a constant but does not have a start value
Variable clutch3.Free is a constant but does not have a start value
Variable clutch3.Forward is a constant but does not have a start value
Variable clutch3.Stuck is a constant but does not have a start value
Variable clutch3.Backward is a constant but does not have a start value
Variable clutch3.unitAngularAcceleration is a constant but does not have a start value
Variable clutch3.unitTorque is a constant but does not have a start value
Variable clutch3.useHeatPort is a constant but does not have a start value
Variable J4.flange_b.tau is a constant but does not have a start value
Variable J4.stateSelect is a constant but does not have a start value
Variable sin2.pi is a constant but does not have a start value
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
Variable der(J2.phi) is declared as an alias of J2.w but they do not match
Variable clutch2.flange_a.phi is declared as an alias of J2.phi but they do not match
Variable clutch2.flange_b.phi is declared as an alias of J3.phi but they do not match
Variable clutch2.mue0 is declared as an alias of clutch2.mue_pos[1, 2] but they do not match
Variable clutch2.f_normalized is declared as an alias of step1.y but they do not match
Variable J3.flange_a.phi is declared as an alias of J3.phi but they do not match
Variable J3.flange_b.phi is declared as an alias of J3.phi but they do not match
Variable der(J3.phi) is declared as an alias of J3.w but they do not match
Variable clutch3.flange_a.phi is declared as an alias of J3.phi but they do not match
Variable clutch3.flange_b.phi is declared as an alias of J4.phi but they do not match
Variable clutch3.mue0 is declared as an alias of clutch3.mue_pos[1, 2] but they do not match
Variable J4.flange_a.phi is declared as an alias of J4.phi but they do not match
Variable J4.flange_b.phi is declared as an alias of J4.phi but they do not match
Variable der(J4.phi) is declared as an alias of J4.w but they do not match
Variable step2.y is declared as an alias of clutch3.f_normalized but they do not match
Variable fixed.flange.phi is declared as an alias of fixed.phi0 but they do not match
There are some errors.

Comments and remarks can be addressed to support.fr@lmsintl.com

