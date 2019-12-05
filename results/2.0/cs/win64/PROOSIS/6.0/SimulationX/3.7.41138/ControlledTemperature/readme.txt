EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: SX_ControlledTemperatureEL
 PARTITION: default
 EXPERIMENT: SX_ControlledTemperature
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 14/03/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
   DECLS
		FILEPATH fmuPath = "ControlledTemperature.fmu"
		REAL hModel
		REAL TRes
		TABLE_1D tab
		REAL aux
   OBJECTS
   INIT
   BOUNDS
   BODY
	
		readTableCols1D("ControlledTemperature_in.txt",1,2,tab)
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
		
		
		aux = timeTableInterp(TIME,tab)
		cfmSetValueReal(hModel,"onOffController.reference",aux)
		//WRITE("Valor0: %f\n",aux)
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		REPORT_REFRESH()
		
		WRITEF("ControlledTemperature_out.csv","\"time\",\"TRes\"\n")
		TRes = cfmGetValueReal(hModel, "TRes")
      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		//WRITE("Valor1: %f\n",aux)
		
		
		WHILE((TSTOP - TIME) >= CINT)
      
			//cfmSetValueReal(hModel,"onOffController.reference",timeTableInterp(TIME,tab))
			WRITE("Valor2: %f\n",aux)
		
	      cfmRun(hModel)
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			WRITE("Valor3: %f\n",aux)
	      cfmWait(hModel)
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			
			WRITE("Valor4: %f\n",aux)
	      TRes = cfmGetValueReal(hModel, "TRes")
	      ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			WRITEF("ControlledTemperature_out.csv","%f,%f\n",TIME,TRes)
			//WRITE("Valor5: %f\n",aux)
			WRITE("%f\t%f\n",TIME,timeTableInterp(TIME,tab))
			//WRITE("Valor6: %f\n",aux)
	      TIME = TIME + CINT
			
			aux = timeTableInterp(TIME,tab)
			cfmSetValueReal(hModel,"onOffController.reference",aux)
			WRITE("Valor0: %f\n",aux)
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			
			REPORT_REFRESH()
			
	      
  	 END WHILE
	 
	 WRITEF("ControlledTemperature_out.csv","%f,%f\n",TSTOP,TRes)
      
END EXPERIMENT
