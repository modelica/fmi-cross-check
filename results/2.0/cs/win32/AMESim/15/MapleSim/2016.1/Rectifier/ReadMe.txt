Test case     : Rectifier.fmu
Done with     : LMS Imagine.Lab Amesim 15
Performed on  : 2016-Aug-02
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Co-simulation, version 2.0, running on win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
MapleSim20161_Rectifier.c        
Setting environment for using Microsoft Visual Studio 2010 x86 tools.
cl  -I"c:\apps\Amesim\v1500\Amesim\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MapleSim20161_Rectifier.c -Fowin32\
MapleSim20161_Rectifier.c
MapleSim20161_Rectifier.c(801) : warning C4090: '=' : different 'const' qualifiers
Submodel build completed!

Model description ok.
Warning(s):
Missing InitialUnknown index 2
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/MapleSim20161_Rectifier.spe submodel file...
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/MapleSim20161_Rectifier.c submodel source file...
FMICreateIcon: icon fmuin000out001 already exists in c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 0.1 s
Print interval   : 1e-7 s
Integrator type  : fixed step integrator
Step size        : 1e-7 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact.plm@siemens.com
