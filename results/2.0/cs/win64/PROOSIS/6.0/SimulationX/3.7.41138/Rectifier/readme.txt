EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: SX_RectifierEL
 PARTITION: default
 EXPERIMENT: SX_Rectifier
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 14/03/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
   DECLS
      FILEPATH fmuPath = "Rectifier.fmu"
      REAL hModel
		REAL Capacitor1_i
	   REAL IdealDiode3_v 
   BODY
		TIME = 0
    	TSTOP = 0.1
    	CINT = 0.0001
		
		hModel = cfmLoadModel(fmuPath,FALSE)
      ASSERT (cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
      WRITEF("varInfo.txt", "%s", cfmGetVarReport(hModel))
		
		cfmSetStartTime(hModel, TIME)
	   ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
	   
		cfmSetStopTime(hModel, TSTOP)
	   ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
	   
		cfmSetCINT(hModel, CINT)
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		REPORT_REFRESH()
		
		WRITEF("Rectifier_out.csv","\"time\",\"Capacitor1.i\",\"IdealDiode3.v\"\n")
		Capacitor1_i = cfmGetValueReal(hModel, "Capacitor1.i")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		IdealDiode3_v = cfmGetValueReal(hModel, "IdealDiode3.v")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
    WHILE((TSTOP - TIME) >= CINT)
      
      cfmRun(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
      cfmWait(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
      Capacitor1_i = cfmGetValueReal(hModel, "Capacitor1.i")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		IdealDiode3_v = cfmGetValueReal(hModel, "IdealDiode3.v")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)

		WRITEF("Rectifier_out.csv","%f,%f,%f\n",TIME,Capacitor1_i,IdealDiode3_v)

      TIME = TIME + CINT
      REPORT_REFRESH()
    END WHILE
	 
	 WRITEF("Rectifier_out.csv","%f,%f,%f\n",TSTOP,Capacitor1_i,IdealDiode3_v)
	 

END EXPERIMENT