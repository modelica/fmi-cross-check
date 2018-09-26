PMSF FMI Bench 1.5.4.0 CrossCheck Results
----------------------------------------- 

The results can be generated with the command-line facility of FMI Bench,
as specified in the run.bat batch file.

Contact: fmibench@pmsf.de


Testcase Specific Remarks:

The FMU output diverges wildly from the reference output, potentially
due to dependence of the FMU on external communication step size for
the choice of internal solver steps, or some other reason.  Further
research will be needed.
