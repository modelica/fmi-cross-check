Test case     : DFFREG.fmu
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
CSIMPDFFREG.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPDFFREG.c -Fowin32\
CSIMPDFFREG.c
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1619) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Warning(s):
Variable dFFREG.delay.y[1] is declared as an alias of dataOut1 but they do not match
Variable dFFREG.delay.y[2] is declared as an alias of dataOut2 but they do not match
Variable dFFREG.dataOut[1] is declared as an alias of dataOut1 but they do not match
Variable dFFREG.dataOut[2] is declared as an alias of dataOut2 but they do not match
Creating C:\c32\Dymola\2015_FD01\DFFREG/./submodels/CSIMPDFFREG.spe submodel file...
Creating C:\c32\Dymola\2015_FD01\DFFREG/./submodels/CSIMPDFFREG.c submodel source file...
Icon fmuin000out002 added to C:\c32\Dymola\2015_FD01\DFFREG/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 25 s
Print interval   : 0.1 s
Integrator type  : fixed step integrator
Step size        : 0.1 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
