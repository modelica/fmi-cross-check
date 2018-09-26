Test case     : BooleanNetwork1.fmu
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
CSIMPBooleanNetwork1.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPBooleanNetwork1.c -Fowin32\
CSIMPBooleanNetwork1.c
CSIMPBooleanNetwork1.c(903) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPBooleanNetwork1.c(1425) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
Submodel build completed!

Model description ok.
Warning(s):
Variable onDelay.y is declared as an alias of y6 but they do not match
Variable triggeredAdd.u is declared as an alias of integerConstant.k but they do not match
Variable integerConstant.y is declared as an alias of integerConstant.k but they do not match
Variable showValue1.showNumber is declared as an alias of y1 but they do not match
Variable showValue5.showActive is declared as an alias of y5 but they do not match
Variable showValue6.showActive is declared as an alias of y6 but they do not match
Variable rSFlipFlop.Q is declared as an alias of Q but they do not match
Variable rSFlipFlop.QI is declared as an alias of QI but they do not match
Variable rSFlipFlop.nor.u2 is declared as an alias of Q but they do not match
Variable rSFlipFlop.nor1.u1 is declared as an alias of QI but they do not match
Variable rSFlipFlop.nor1.y is declared as an alias of Q but they do not match
Variable rSFlipFlop.pre.y is declared as an alias of QI but they do not match
Creating C:\c32\Dymola\2015_FD01\BooleanNetwork1/./submodels/CSIMPBooleanNetwork1.spe submodel file...
Creating C:\c32\Dymola\2015_FD01\BooleanNetwork1/./submodels/CSIMPBooleanNetwork1.c submodel source file...
Icon fmuin001out009 added to C:\c32\Dymola\2015_FD01\BooleanNetwork1/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 10 s
Print interval   : 0.01 s
Integrator type  : fixed step integrator
Step size        : 0.01 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
