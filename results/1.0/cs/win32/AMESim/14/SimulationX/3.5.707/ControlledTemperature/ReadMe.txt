Test case     : ControlledTemperature.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-19
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Co-simulation, version 1.0, running on win64, win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPControlledTemperature.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPControlledTemperature.c -Fowin32\
CSIMPControlledTemperature.c
Submodel build completed!

Model description ok.
Creating C:\c32\SimulationX\3.5.707\ControlledTemperature/./submodels/CSIMPControlledTemperature.spe submodel file...
Creating C:\c32\SimulationX\3.5.707\ControlledTemperature/./submodels/CSIMPControlledTemperature.c submodel source file...
Icon fmuin001out001 added to C:\c32\SimulationX\3.5.707\ControlledTemperature/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 10 s
Print interval   : 0.02 s
Integrator type  : fixed step integrator
Step size        : 0.02 s
Solver type      : Euler

Simulation result mismatch!

Comments and remarks can be addressed to fmicontact@siemens.com
