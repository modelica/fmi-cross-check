Test case     : vanDerPol.fmu
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
FMUSDK204_vanDerPol.c        
Setting environment for using Microsoft Visual Studio 2010 x86 tools.
cl  -I"c:\apps\Amesim\v1500\Amesim\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c FMUSDK204_vanDerPol.c -Fowin32\
FMUSDK204_vanDerPol.c
FMUSDK204_vanDerPol.c(742) : warning C4090: '=' : different 'const' qualifiers
Submodel build completed!

Model description ok.
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/FMUSDK204_vanDerPol.spe submodel file...
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/FMUSDK204_vanDerPol.c submodel source file...
FMICreateIcon: icon fmuin000out000 already exists in c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 5 s
Print interval   : 0.1 s
Integrator type  : fixed step integrator
Step size        : 0.1 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact.plm@siemens.com
