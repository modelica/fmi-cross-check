Test case     : lights_control.fmu
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
CSIMPlights_control.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPlights_control.c -Fowin32\
CSIMPlights_control.c
Submodel build completed!

Model description ok.
Creating C:\c32\Silver\2.6.0.312_alpha12\Lights_control/./submodels/CSIMPlights_control.spe submodel file...
Creating C:\c32\Silver\2.6.0.312_alpha12\Lights_control/./submodels/CSIMPlights_control.c submodel source file...
Icon fmuin004out006 added to C:\c32\Silver\2.6.0.312_alpha12\Lights_control/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 2.56 s
Print interval   : 0.01 s
Integrator type  : fixed step integrator
Step size        : 0.01 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
