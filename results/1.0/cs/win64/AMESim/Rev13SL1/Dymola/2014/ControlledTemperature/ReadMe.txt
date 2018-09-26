Test case   : ControlledTemperature.fmu
Done with   : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-JAN-31
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 64 bit

Import process:

fmi_import_compiler -ccopt -win64 ControlledTemperature.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPControlledTemperature.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPControlledTemperature.c -Fowin64\
CSIMPControlledTemperature.c
CSIMPControlledTemperature.c(299) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPControlledTemperature.c(340) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPControlledTemperature.c(355) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPControlledTemperature.c(360) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
Submodel build completed!

Model description ok with some potential errors relaxed.
Warning(s):
The parameters constantVoltage.p.v (alias), constantVoltage.V share the same value reference, which is not allowed
Variable constantVoltage.v is declared as an alias of constantVoltage.V but they do not match
Variable constantVoltage.p.v is declared as an alias of constantVoltage.V but they do not match
Variable fixedTemperature.port.T is declared as an alias of fixedTemperature.T but they do not match
Variable temperatureSensor.T is declared as an alias of heatCapacitor_T but they do not match
Variable thermalConductor.port_b.T is declared as an alias of fixedTemperature.T but they do not match
Variable idealSwitch.p.v is declared as an alias of constantVoltage.V but they do not match
Variable idealSwitch.control is declared as an alias of switch_Controll but they do not match
Variable onOffController.u is declared as an alias of heatCapacitor_T but they do not match
Variable logicalNot.y is declared as an alias of switch_Controll but they do not match
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\ControlledTemperature/./submodels/CSIMPControlledTemperature.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\ControlledTemperature/./submodels/CSIMPControlledTemperature.c submodel source file...
Icon fmuin000out003 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\ControlledTemperature/./Icons/fmi.ico

Simulation parameters:

Simulation time  : 0 s to 10 s
Integrator type  : Euler fixed step integrator
Fixed step size  : 0.02 s

Comments and remarks can be addressed to support.fr@lmsintl.com

