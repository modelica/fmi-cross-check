EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: SX_Engine1bEL
 PARTITION: default
 EXPERIMENT: SX_Engine1b
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 14/03/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
   DECLS
      FILEPATH fmuPath = "Engine1b.fmu"
      REAL hModel
		REAL Piston_body_r_0_2
	   REAL Inertia_w 
   BODY
		TIME = 0
    	TSTOP = 0.5
    	CINT = 0.001
		
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
		
		WRITEF("Engine1b_out.csv","\"time\",\"Piston.body.r_0[2]\",\"Inertia.w\"\n")
		
		Piston_body_r_0_2 = cfmGetValueReal(hModel, "Piston.body.r_0[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		Inertia_w = cfmGetValueReal(hModel, "Inertia.w")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		
    WHILE((TSTOP - TIME) >= CINT)
      
      cfmRun(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
      cfmWait(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
      Piston_body_r_0_2 = cfmGetValueReal(hModel, "Piston.body.r_0[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		Inertia_w = cfmGetValueReal(hModel, "Inertia.w")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)

		WRITEF("Engine1b_out.csv","%g,%g,%g\n",TIME,Piston_body_r_0_2,Inertia_w)

      TIME = TIME + CINT
      REPORT_REFRESH()
    END WHILE
	 
	 WRITEF("Engine1b_out.csv","%g,%g,%g\n",TSTOP,Piston_body_r_0_2,Inertia_w)
	 

END EXPERIMENT