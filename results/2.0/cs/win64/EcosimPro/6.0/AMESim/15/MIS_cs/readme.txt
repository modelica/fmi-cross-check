EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: AMESim_MIS_csEL
 PARTITION: default
 EXPERIMENT: AMESim_MIS_cs
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 28/08/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
	DECLS
		FILEPATH fmuPath = "MIS_cs.fmu"
		REAL hModel
		REAL volume_INJ01
	   REAL q_INJ01 
	BODY
		TIME = 0
		TSTOP = 0.016
		CINT = 0.00001
		
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
		
		WRITEF("MIS_cs_out.csv","\"time\",\"volume@INJ01\",\"q@INJ01\"\n")
		volume_INJ01 = cfmGetValueReal(hModel, "volume@INJ01")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		q_INJ01 = cfmGetValueReal(hModel, "q@INJ01")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		
	WHILE((TSTOP - TIME) >= CINT)
      
		cfmRun(hModel)
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		cfmWait(hModel)
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		volume_INJ01 = cfmGetValueReal(hModel, "volume@INJ01")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		q_INJ01 = cfmGetValueReal(hModel, "q@INJ01")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		WRITEF("MIS_cs_out.csv","%g,%g,%g\n",TIME,volume_INJ01,q_INJ01)

		TIME = TIME + CINT
		REPORT_REFRESH()
	END WHILE
	WRITEF("MIS_cs_out.csv","%g,%g,%g\n",TSTOP,volume_INJ01,q_INJ01)
	 

END EXPERIMENT