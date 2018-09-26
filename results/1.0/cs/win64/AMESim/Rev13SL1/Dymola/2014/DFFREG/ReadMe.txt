Test case : DFFREG.fmu
Done with : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-Jan-31
Platform : Windows 7 64 bit using standard32 platform type
Compiler : Microsoft Visual Studio 2005 Pro 64 bit

Import process:
fmi_import_compiler -ccopt -win64 DFFREG.fmu

It is an FMU for Co-simulation 1.0, running on win64, win32
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPDFFREG.c        
cl -DWIN64 -I"c:\wrk\devl\rev13SL1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPDFFREG.c -Fowin64\
CSIMPDFFREG.c
CSIMPDFFREG.c(687) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPDFFREG.c(728) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPDFFREG.c(743) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPDFFREG.c(748) : warning C4267: 'function' : conversion from 'size_t' to 'int', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
CSIMPDFFREG.c(1602) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Variable dFFREG.delay.y[1] is declared as an alias of dataOut1 but they do not match
Variable dFFREG.delay.y[2] is declared as an alias of dataOut2 but they do not match
Variable dFFREG.dataOut[1] is declared as an alias of dataOut1 but they do not match
Variable dFFREG.dataOut[2] is declared as an alias of dataOut2 but they do not match
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\DFFREG/./submodels/CSIMPDFFREG.spe submodel file...
Creating \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\DFFREG/./submodels/CSIMPDFFREG.c submodel source file...
Icon fmuin000out002 added to \svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\Dymola\2014\DFFREG/./Icons/fmi.ico

Simulation parameters:
Simulation time : 0 s to 25 s
Integrator type : Euler fixed step integrator
Fixed step size : 0.05000000074505806 s

Comments and remarks can be addressed to support.fr@lmsintl.com
