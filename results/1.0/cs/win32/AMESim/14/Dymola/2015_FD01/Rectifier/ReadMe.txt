Test case     : Rectifier.fmu
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
CSIMPRectifier.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPRectifier.c -Fowin32\
CSIMPRectifier.c
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1069) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
Submodel build completed!

Model description ok.
Warning(s):
Variable SineVoltage1.i is declared as an alias of iAC[1] but they do not match
Variable SineVoltage1.p.i is declared as an alias of iAC[1] but they do not match
Variable SineVoltage1.n.i is declared as an alias of iAC[1] but they do not match
Variable SineVoltage2.i is declared as an alias of Inductor2.i but they do not match
Variable SineVoltage2.p.i is declared as an alias of Inductor2.i but they do not match
Variable SineVoltage2.n.i is declared as an alias of Inductor2.i but they do not match
Variable SineVoltage3.i is declared as an alias of Inductor3.i but they do not match
Variable SineVoltage3.p.i is declared as an alias of Inductor3.i but they do not match
Variable SineVoltage3.n.i is declared as an alias of Inductor3.i but they do not match
Variable Inductor1.i is declared as an alias of iAC[1] but they do not match
Variable Inductor1.p.i is declared as an alias of iAC[1] but they do not match
Variable Inductor1.n.i is declared as an alias of iAC[1] but they do not match
Variable Inductor2.p.i is declared as an alias of Inductor2.i but they do not match
Variable Inductor2.n.i is declared as an alias of Inductor2.i but they do not match
Variable Inductor3.p.i is declared as an alias of Inductor3.i but they do not match
Variable Inductor3.n.i is declared as an alias of Inductor3.i but they do not match
Variable IdealDiode1.T_heatPort is declared as an alias of IdealDiode1.T but they do not match
Variable IdealDiode2.T_heatPort is declared as an alias of IdealDiode2.T but they do not match
Variable IdealDiode3.T_heatPort is declared as an alias of IdealDiode3.T but they do not match
Variable IdealDiode4.T_heatPort is declared as an alias of IdealDiode4.T but they do not match
Variable IdealDiode5.T_heatPort is declared as an alias of IdealDiode5.T but they do not match
Variable IdealDiode6.T_heatPort is declared as an alias of IdealDiode6.T but they do not match
Variable SignalCurrent1.p.i is declared as an alias of Constant1.k but they do not match
Variable SignalCurrent1.n.i is declared as an alias of Constant1.k but they do not match
Variable SignalCurrent1.i is declared as an alias of Constant1.k but they do not match
Variable Constant1.y is declared as an alias of Constant1.k but they do not match
Creating C:\c32\Dymola\2015_FD01\Rectifier/./submodels/CSIMPRectifier.spe submodel file...
Creating C:\c32\Dymola\2015_FD01\Rectifier/./submodels/CSIMPRectifier.c submodel source file...
Icon fmuin000out008 added to C:\c32\Dymola\2015_FD01\Rectifier/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 0.1 s
Print interval   : 0.0001 s
Integrator type  : fixed step integrator
Step size        : 0.0001 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
