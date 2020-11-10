EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

/*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: EASim_ClassEAmplifierEL
 PARTITION: default
 EXPERIMENT: EASim_ClassEAmplifier
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 28/08/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
	DECLS
		FILEPATH fmuPath = "ClassEAmplifier.fmu"
		REAL hModel
		REAL U_resistance
		REAL I_variable_resistance

	BODY
		TIME = 0
		TSTOP = 0.0001
		CINT = 0.0000001
		
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
		
		WRITEF("ClassEAmplifier_out.csv","\"time\",\"U@resistance\",\"I@variable_resistance\"\n")
		
		U_resistance = cfmGetValueReal(hModel, "U@resistance")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		I_variable_resistance = cfmGetValueReal(hModel, "I@variable_resistance")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		WHILE((TSTOP - TIME) >= CINT)
	
			cfmRun(hModel)
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			cfmWait(hModel)
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			U_resistance = cfmGetValueReal(hModel, "U@resistance")
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			I_variable_resistance = cfmGetValueReal(hModel, "I@variable_resistance")
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			
			WRITEF("ClassEAmplifier_out.csv","%g,%g,%g\n",TIME,U_resistance,I_variable_resistance)
			TIME = TIME + CINT
			REPORT_REFRESH()
			
		END WHILE
		WRITEF("ClassEAmplifier_out.csv","%g,%g,%g\n",TSTOP,U_resistance,I_variable_resistance)

END EXPERIMENT