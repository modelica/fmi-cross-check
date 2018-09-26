Test case     : lights_control.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Mar-06
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
MEIMPlights_control.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPlights_control.c -Fowin32\
MEIMPlights_control.c
Submodel build completed!

Model description ok.
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\Silver\3.2\Lights_Control/./submodels/MEIMPlights_control.spe submodel file...
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\Silver\3.2\Lights_Control/./submodels/MEIMPlights_control.c submodel source file...
Icon fmuin003out004 added to C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\Silver\3.2\Lights_Control/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 7 s
Print interval   : 0.01 s
Integrator type  : standard integrator
Tolerance        : 1e-7
Maximum time step: 1e30 (default)
Solver type      : regular

Comments and remarks can be addressed to fmicontact@siemens.com
