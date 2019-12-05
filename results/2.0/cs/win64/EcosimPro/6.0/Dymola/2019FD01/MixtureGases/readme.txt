EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

 /*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: Dymola_MixtureGasesEL
 PARTITION: default
 EXPERIMENT: Dymola_MixtureGases
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 14/03/2019
-----------------------------------------------------------------------------------------*/


USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
   DECLS
		FILEPATH fmuPath = "MixtureGases.fmu"
      //FILEPATH fmuPath = "J:/FMI-FMU/TEST_COMM_FMI_VALIDATION/libs/IMPORTED/experiments/+dymola_+mixture+gases+e+l.default/+dymola_+mixture+gasess/MixtureGases.fmu"
		//FILEPATH fmuPath = "J:/FMI-FMU/RepositorioFMI-FMU/fmi-cross-check/fmus/2.0/cs/win64/Dymola/2019FD01/MixtureGases/MixtureGases.fmu"
		REAL hModel
		REAL der_p
	   REAL der_T 
   OBJECTS
   INIT
   BOUNDS
   BODY
      -- simulate a transient in range[TIME,TSTOP] reporting every CINT
      TIME = 0
      TSTOP = 1
      CINT = 0.002
		
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
		
		WRITEF("MixtureGases_out.csv","\"time\",\"der_p\",\"der_T\"\n")
		der_p = cfmGetValueReal(hModel, "der_p")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		der_T = cfmGetValueReal(hModel, "der_T")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		WRITEF("MixtureGases_out.csv","%f,%f,%f\n",TIME,der_p,der_T)
		
		WHILE((TSTOP - TIME) >= CINT)
      
	      cfmRun(hModel)
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
	      cfmWait(hModel)
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
	      der_p = cfmGetValueReal(hModel, "der_p")
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			der_T = cfmGetValueReal(hModel, "der_T")
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			WRITEF("MixtureGases_out.csv","%f,%f,%f\n",TIME,der_p,der_T)
	
	      TIME = TIME + CINT
	      REPORT_REFRESH()
  	 END WHILE
	 
	 WRITEF("MixtureGases_out.csv","%f,%f,%f\n",TSTOP,der_p,der_T)
      
END EXPERIMENT