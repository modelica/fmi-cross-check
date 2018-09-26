Test case   : drill.fmu
Done with   : LMS Imagine.Lab AMESim Rev 13SL1
Performed on: 2014-JAN-29
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 64 bit

Import process:

fmi_import_compiler -ccopt -win64 drill.fmu
It is an FMU for Co-simulation 1.0, running on win64, win32
Icon fmuin000out050 added to \svn_fmi_
standard_org\branches\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESi
m\Rev13SL1\ControlBuild\2013-2a\Drill/./Icons/fmi.ico
Imagine SA Submodels Windows NT compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler.
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPdrill.c
cl -DWIN64 -I"c:\wrk\devl\rev13sl1\v1310\lib" -nologo -MT -W3 -EHsc -wd4996 -O2
-DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPdrill.c -Fowin64\
CSIMPdrill.c
CSIMPdrill.c(302) : warning C4267: 'function' : conversion from 'size_t' to 'int
', possible loss of data
CSIMPdrill.c(343) : warning C4267: 'function' : conversion from 'size_t' to 'int
', possible loss of data
CSIMPdrill.c(358) : warning C4267: 'function' : conversion from 'size_t' to 'int
', possible loss of data
CSIMPdrill.c(363) : warning C4267: 'function' : conversion from 'size_t' to 'int
', possible loss of data
Submodel build completed!
Model description ok.
Creating \svn_fmi_standard_org\branche
s\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\ControlBu
ild\2013-2a\Drill/./submodels/CSIMPdrill.spe submodel file...
Creating \svn_fmi_standard_org\branche
s\public\CrossCheck_Results\FMI_1.0\CoSimulation\win64\AMESim\Rev13SL1\ControlBu
ild\2013-2a\Drill/./submodels/CSIMPdrill.c submodel source file...


Simulation parameters:

Simulation time  : 0 s to 60 s
Integrator type  : Euler fixed step integrator
Fixed step size  : 0.12 s

Comments and remarks can be addressed to support.fr@lmsintl.com

