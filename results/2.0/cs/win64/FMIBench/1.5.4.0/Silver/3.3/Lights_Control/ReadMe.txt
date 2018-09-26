PMSF FMI Bench 1.5.4.0 CrossCheck Results
----------------------------------------- 

The results can be generated with the command-line facility of FMI Bench,
as specified in the run.bat batch file.

Contact: fmibench@pmsf.de


Testcase Specific Remarks:

Differences in behavior result from (in our opinion invalid for the
application domain) interpolation being performed on the light switch
inputs, which are not performed by FMI Bench generated simulators.
This leads to too early switch on for other simulators, not replicated
by the FMI Bench simulator.
