Test case     : Modelica_Electrical_Digital_Examples_DFFREG.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-18
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
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPModelica_Electrical_Digital_Examples_DFFREG.c -Fowin32\
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPModelica_Electrical_Digital_Examples_DFFREG.c(1614) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Warning(s):
Variable dFFREG.delay.y[1] is declared as an alias of dFFREG.delay.inertialDelaySensitive[1].y but they do not match
Variable dFFREG.delay.y[2] is declared as an alias of dFFREG.delay.inertialDelaySensitive[2].y but they do not match
Variable dFFREG.dataOut[1] is declared as an alias of dFFREG.delay.inertialDelaySensitive[1].y but they do not match
Variable dFFREG.dataOut[2] is declared as an alias of dFFREG.delay.inertialDelaySensitive[2].y but they do not match
Creating C:\c32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./submodels/CSIMPModelica_Electrical_Digital_Examples_DFFREG.spe submodel file...
Creating C:\c32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./submodels/CSIMPModelica_Electrical_Digital_Examples_DFFREG.c submodel source file...
Icon fmuin000out000 added to C:\c32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 25 s
Print interval   : 0.1 s
Integrator type  : fixed step integrator
Step size        : 0.1 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
