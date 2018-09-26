Test case   : BooleanNetwork1.fmu
Done with   : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-JAN-31
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 64 bit

Import process:

fmi_import_compiler -ccopt -win64 BooleanNetwork1.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPBooleanNetwork1.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPBooleanNetwork1.c -Fowin64\
CSIMPBooleanNetwork1.c
CSIMPBooleanNetwork1.c(352) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPBooleanNetwork1.c(393) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPBooleanNetwork1.c(408) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPBooleanNetwork1.c(413) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPBooleanNetwork1.c(955) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
CSIMPBooleanNetwork1.c(1581) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
Submodel build completed!
Model description ok.
Warning(s):
Variable onDelay.y is declared as an alias of y6 but they do not match
Variable triggeredAdd.u is declared as an alias of integerConstant.k but they do not match
Variable integerConstant.y is declared as an alias of integerConstant.k but they do not match
Variable showValue1.numberPort is declared as an alias of y1 but they do not match
Variable showValue1.showNumber is declared as an alias of y1 but they do not match
Variable showValue5.activePort is declared as an alias of y5 but they do not match
Variable showValue5.showActive is declared as an alias of y5 but they do not match
Variable showValue6.activePort is declared as an alias of y6 but they do not match
Variable showValue6.showActive is declared as an alias of y6 but they do not match
Variable rSFlipFlop.Q is declared as an alias of Q but they do not match
Variable rSFlipFlop.QI is declared as an alias of QI but they do not match
Variable rSFlipFlop.nor.u2 is declared as an alias of Q but they do not match
Variable rSFlipFlop.nor1.u1 is declared as an alias of QI but they do not match
Variable rSFlipFlop.nor1.y is declared as an alias of Q but they do not match
Variable rSFlipFlop.pre.y is declared as an alias of QI but they do not match
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\BooleanNetwork1/./submodels/CSIMPBooleanNetwork1.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\BooleanNetwork1/./submodels/CSIMPBooleanNetwork1.c submodel source file...
Icon fmuin001out009 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\BooleanNetwork1/./Icons/fmi.ico

Simulation parameters:

Simulation time  : 0 s to 10 s
Integrator type  : Euler fixed step integrator
Fixed step size  : 0.01 s


Comments and remarks can be addressed to support.fr@lmsintl.com

