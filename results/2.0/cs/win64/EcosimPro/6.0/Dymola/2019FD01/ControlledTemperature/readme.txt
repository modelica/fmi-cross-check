EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: Dymola_ControlledTemperatureEL
 PARTITION: default
 EXPERIMENT: Dymola_ControlledTemperature
 TEMPLATE: TRANSIENT
 CREATION DATE: 28/08/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
	DECLS
      FILEPATH fmuPath = "ControlledTemperature.fmu"
		REAL hModel
		REAL heatCapacitor_T
	   INTEGER switch_Controll 
   OBJECTS
   INIT
   BOUNDS
   BODY
      -- simulate a transient in range[TIME,TSTOP] reporting every CINT
      TIME = 0
      TSTOP = 10
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
		
		WRITEF("ControlledTemperature_out.csv","\"time\",\"heatCapacitor_T\",\"switch_Controll\"\n")
		heatCapacitor_T = cfmGetValueReal(hModel, "heatCapacitor_T")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		switch_Controll = cfmGetValueInteger(hModel, "switch_Controll")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		WHILE((TSTOP - TIME) >= CINT)
      
	      cfmRun(hModel)
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
	      cfmWait(hModel)
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
	      heatCapacitor_T = cfmGetValueReal(hModel, "heatCapacitor_T")
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			switch_Controll = cfmGetValueInteger(hModel, "switch_Controll")
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			WRITEF("ControlledTemperature_out.csv","%f,%f,%d\n",TIME,heatCapacitor_T,switch_Controll)
	
	      TIME = TIME + CINT
	      REPORT_REFRESH()
  	 END WHILE
    
	 WRITEF("ControlledTemperature_out.csv","%f,%f,%d\n",TSTOP,heatCapacitor_T,switch_Controll)
END EXPERIMENT