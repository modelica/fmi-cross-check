Test case : IntegerNetwork1.fmu
Done with : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-Jan-31
Platform : Windows 7 64 bit using standard32 platform type
Compiler : Microsoft Visual Studio 2005 Pro 64 bit

Import process:
fmi_import_compiler -ccopt -win64 IntegerNetwork1.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPIntegerNetwork1.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPIntegerNetwork1.c -Fowin64\
CSIMPIntegerNetwork1.c
CSIMPIntegerNetwork1.c(305) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPIntegerNetwork1.c(346) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPIntegerNetwork1.c(361) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPIntegerNetwork1.c(366) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPIntegerNetwork1.c(1248) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Variable sum.u[3] is declared as an alias of integerConstant.k but they do not match
Variable integerConstant.y is declared as an alias of integerConstant.k but they do not match
Variable triggeredAdd.u is declared as an alias of integerConstant.k but they do not match
Variable showValue2.numberPort is declared as an alias of y_triggeredAdd but they do not match
Variable showValue2.showNumber is declared as an alias of y_triggeredAdd but they do not match
Variable showValue3.number is declared as an alias of y_multiSwitch but they do not match
Variable showValue3.showNumber is declared as an alias of y_multiSwitch but they do not match
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\IntegerNetwork1/./submodels/CSIMPIntegerNetwork1.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\IntegerNetwork1/./submodels/CSIMPIntegerNetwork1.c submodel source file...
Icon fmuin001out004 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\IntegerNetwork1/./Icons/fmi.ico

Simulation parameters:
Simulation time : 0 s to 10 s
Integrator type : Euler fixed step integrator
Fixed step size : 0.003 s

Comments and remarks can be addressed to support.fr@lmsintl.com
