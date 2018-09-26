Test case     : Continuous.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-17
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Model Exchange, version 1.0, running on win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
MEIMPContinuous.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPContinuous.c -Fowin32\
MEIMPContinuous.c
Submodel build completed!

Model description ok.
Creating C:\crosscheck32\FMIToolbox_MATLAB\1.6\Continuous/./submodels/MEIMPContinuous.spe submodel file...
Creating C:\crosscheck32\FMIToolbox_MATLAB\1.6\Continuous/./submodels/MEIMPContinuous.c submodel source file...
Icon fmuin000out007 added to C:\crosscheck32\FMIToolbox_MATLAB\1.6\Continuous/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 10 s
Print interval   : 0.01 s
Integrator type  : fixed step integrator
Step size        : 0.001 s
Solver type      : Euler

Simulation results regarding ContinuousStates[4] not ok.

Comments and remarks can be addressed to fmicontact@siemens.com
