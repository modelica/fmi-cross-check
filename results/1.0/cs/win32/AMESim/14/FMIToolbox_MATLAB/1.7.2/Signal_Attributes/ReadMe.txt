Test case     : Signal_Attributes.fmu
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
CSIMPSignal_Attributes.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPSignal_Attributes.c -Fowin32\
CSIMPSignal_Attributes.c
Submodel build completed!

Model description ok.
Creating C:\c32\FMIToolbox_MATLAB\1.7.2\Signal_Attributes/./submodels/CSIMPSignal_Attributes.spe submodel file...
Creating C:\c32\FMIToolbox_MATLAB\1.7.2\Signal_Attributes/./submodels/CSIMPSignal_Attributes.c submodel source file...
Icon fmuin000out018 added to C:\c32\FMIToolbox_MATLAB\1.7.2\Signal_Attributes/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 10 s
Print interval   : 0.1 s
Integrator type  : fixed step integrator
Step size        : 0.1 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
