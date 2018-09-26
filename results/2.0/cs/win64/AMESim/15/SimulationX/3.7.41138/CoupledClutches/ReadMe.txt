Test case     : CoupledClutches.fmu
Done with     : LMS Imagine.Lab Amesim 15
Performed on  : 2016-Jul-28
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 64 bit

Import process:
It is an FMU for Co-simulation, version 2.0, running on win64
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
SimulationX3741138_CoupledClutches.c        
Setting environment for using Microsoft Visual Studio 2010 x64 tools.
cl -DWIN64 -I"c:\apps\Amesim\v1500\Amesim\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c SimulationX3741138_CoupledClutches.c -Fowin64\
SimulationX3741138_CoupledClutches.c
SimulationX3741138_CoupledClutches.c(767) : warning C4090: '=' : different 'const' qualifiers
Submodel build completed!

Model description ok.
Creating c:/wrk/devl/Rev15/CrossChecks/CosimImport20/win64/./submodels/SimulationX3741138_CoupledClutches.spe submodel file...
Creating c:/wrk/devl/Rev15/CrossChecks/CosimImport20/win64/./submodels/SimulationX3741138_CoupledClutches.c submodel source file...
FMICreateIcon: icon fmuin001out004 already exists in c:/wrk/devl/Rev15/CrossChecks/CosimImport20/win64/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 1.5 s
Print interval   : 1e-4 s
Integrator type  : fixed step integrator
Step size        : 1e-4 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact.plm@siemens.com
