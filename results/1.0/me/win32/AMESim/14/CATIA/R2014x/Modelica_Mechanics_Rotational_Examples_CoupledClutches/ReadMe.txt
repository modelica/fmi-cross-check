Test case   : Modelica_Mechanics_Rotational_Examples_CoupledClutches.fmu
Done with   : LMS Imagine.Lab Amesim 14
Performed on: 2015-FEb-16
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 32 bits

Import process:
It is an FMU for Model Exchange, version 1.0, running on win64, win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
MEIMPModelica_Mechanics_Rotational_Examples_CoupledClutches.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPModelica_Mechanics_Rotational_Examples_CoupledClutches.c -Fowin32\
MEIMPModelica_Mechanics_Rotational_Examples_CoupledClutches.c
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
Creating C:\crosscheck32\CATIA\R2014x\Modelica_Mechanics_Rotational_Examples_CoupledClutches/./submodels/MEIMPModelica_Mechanics_Rotational_Examples_CoupledClutches.spe submodel file...
Creating C:\crosscheck32\CATIA\R2014x\Modelica_Mechanics_Rotational_Examples_CoupledClutches/./submodels/MEIMPModelica_Mechanics_Rotational_Examples_CoupledClutches.c submodel source file...
Icon fmuin000out000 added to C:\crosscheck32\CATIA\R2014x\Modelica_Mechanics_Rotational_Examples_CoupledClutches/./Icons/fmi.ico

Simulation parameters:

Simulation time   : 0 s to 1.5 s
Print interval    : 0.001 s
Integrator type   : standard integrator
Tolerance         : 1e-5 (default)
Maximum time step : 1e30  (default)
Solver type       : Regular

Comments and remarks can be addressed to fmicontact@siemens.com
