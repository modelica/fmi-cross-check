EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

 /*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: _LIBRARY_MISC
 PARTITION: experiments
 EXPERIMENT: Dymola_rectifier
 TEMPLATE: TRANSIENT
 TEMPLATE: EXPERIMENT STANDALONE
 CREATION DATE: 28/08/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
   DECLS
      FILEPATH fmuPath = "Rectifier.fmu"
      REAL hModel
		REAL uDC
	   REAL iAC_1 
	   REAL iAC_2 
	   REAL iAC_3
	   REAL uAC_1 
	   REAL uAC_2 
	   REAL uAC_3
		REAL Losses
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
		
		WRITEF("Rectifier_out.csv","time,\"uDC\",\"iAC[1]\",\"iAC[2]\",\"iAC[3]\",\"uAC[1]\",\"uAC[2]\",\"uAC[3]\",\"Losses\"\n")
		uDC = cfmGetValueReal(hModel, "uDC")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_1 = cfmGetValueReal(hModel, "iAC[1]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_2 = cfmGetValueReal(hModel, "iAC[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_3 = cfmGetValueReal(hModel, "iAC[3]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_1 = cfmGetValueReal(hModel, "uAC[1]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_2 = cfmGetValueReal(hModel, "uAC[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_3 = cfmGetValueReal(hModel, "uAC[3]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		Losses = cfmGetValueReal(hModel, "Losses")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)

	
    WHILE((TSTOP - TIME) >= CINT)
      
      cfmRun(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
      cfmWait(hModel)
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
      uDC = cfmGetValueReal(hModel, "uDC")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_1 = cfmGetValueReal(hModel, "iAC[1]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_2 = cfmGetValueReal(hModel, "iAC[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		iAC_3 = cfmGetValueReal(hModel, "iAC[3]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_1 = cfmGetValueReal(hModel, "uAC[1]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_2 = cfmGetValueReal(hModel, "uAC[2]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		uAC_3 = cfmGetValueReal(hModel, "uAC[3]")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		Losses = cfmGetValueReal(hModel, "Losses")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)

		WRITEF("Rectifier_out.csv","%g,%g,%g,%g,%g,%g,%g,%g,%g\n",TIME,uDC,iAC_1,iAC_2,iAC_3,uAC_1,uAC_2,uAC_3,Losses)

      TIME = TIME + CINT
      REPORT_REFRESH()
    END WHILE
	 
	 WRITEF("Rectifier_out.csv","%g,%g,%g,%g,%g,%g,%g,%g,%g\n",TSTOP,uDC,iAC_1,iAC_2,iAC_3,uAC_1,uAC_2,uAC_3,Losses)
	 

END EXPERIMENT