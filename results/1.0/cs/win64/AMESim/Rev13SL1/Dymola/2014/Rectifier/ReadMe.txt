Test case : Rectifier.fmu
Done with : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-Jan-31
Platform : Windows 7 64 bit using standard32 platform type
Compiler : Microsoft Visual Studio 2005 Pro 64 bit

Import process:
fmi_import_compiler -ccopt -win64 Rectifier.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPRectifier.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPRectifier.c -Fowin64\
CSIMPRectifier.c
CSIMPRectifier.c(409) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPRectifier.c(450) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPRectifier.c(465) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPRectifier.c(470) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPRectifier.c(1088) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
Submodel build completed!

Model description ok.
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
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\Rectifier/./submodels/CSIMPRectifier.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\Rectifier/./submodels/CSIMPRectifier.c submodel source file...
Icon fmuin000out008 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\Rectifier/./Icons/fmi.ico

Simulation parameters:
Simulation time : 0 s to 0.1 s
Integrator type : Euler fixed step integrator
Fixed step size : 2e-004 s

Comments and remarks can be addressed to support.fr@lmsintl.com
