Test case     : Discontinuities.fmu
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
FMIToolbox_MATLAB23_Discontinuities.c        
Setting environment for using Microsoft Visual Studio 2010 x86 tools.
cl  -I"c:\apps\Amesim\v1500\Amesim\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c FMIToolbox_MATLAB23_Discontinuities.c -Fowin32\
FMIToolbox_MATLAB23_Discontinuities.c
FMIToolbox_MATLAB23_Discontinuities.c(815) : warning C4090: '=' : different 'const' qualifiers
Submodel build completed!

Model description ok.
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/FMIToolbox_MATLAB23_Discontinuities.spe submodel file...
Creating c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./submodels/FMIToolbox_MATLAB23_Discontinuities.c submodel source file...
Icon fmuin000out010 added to c:/wrk/devl/rev15/CrossChecks/CosimImport20/win32/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 10.000000 s
Print interval   : 0.010000 s
Integrator type  : fixed step integrator
Step size        : 0.010000 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact.plm@siemens.com
