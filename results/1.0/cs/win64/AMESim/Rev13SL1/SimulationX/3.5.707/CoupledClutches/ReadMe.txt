Test case   : CoupledClutches.fmu
Done with   : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-JAN-29
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 64 bit

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
cl -DWIN64 -I"c:\wrk\devl\rev13sl1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPCoupledClutches.c -Fowin64\
CSIMPCoupledClutches.c
CSIMPCoupledClutches.c(260) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(301) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(316) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPCoupledClutches.c(321) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
Submodel build completed!
Model description ok.
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\SimulationX\3.5.707\CoupledClutches/./submodels/CSIMPCoupledClutches.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\SimulationX\3.5.707\CoupledClutches/./submodels/CSIMPCoupledClutches.c submodel source file...
Icon fmuin001out004 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\SimulationX\3.5.707\CoupledClutches/./Icons/fmi.ico


Simulation parameters:

Simulation time  : 0 s to 1.5 s
Integrator type  : Euler fixed step integrator
Fixed step size  : 0.01 s

Comments and remarks can be addressed to support.fr@lmsintl.com

