EcosimPro/PROOSIS Version: 6.0.2

To import the FMU copy the experiment code in a experiment (named exp1) above in a experiment of a 
default partition of an empty component (named dummyComponent) (Library COMM_FMI 2.2.10
must be loaded in the Workspace).

The FMU file must be located in the experiment folder.

 /*-----------------------------------------------------------------------------------------
 LIBRARY: IMPORTED
 COMPONENT: AMESim_fuelrail_csEL
 PARTITION: default
 EXPERIMENT: AMESim_fuelrail_cs
 TEMPLATE: TRANSIENT
 TEMPLATE: EMPTY EXPERIMENT 
 CREATION DATE: 28/08/2019
-----------------------------------------------------------------------------------------*/

USE COMM_FMI

EXPERIMENT exp1 ON dummyComponent.default
	DECLS
		FILEPATH fmuPath = "fuelrail_cs.fmu"
		REAL hModel
		REAL p1_general_hydraulic_chamber
		REAL p1_hydraulic_4
		REAL q_volumesensor
	BODY
		TIME = 0
		TSTOP = 0.03
		CINT = 0.000001
		
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
		
		WRITEF("fuelrail_cs_out.csv","\"time\",\"p1@general_hydraulic_chamber\",\"p1@hydraulic_4\",\"q@volumesensor\"\n")
		
		p1_general_hydraulic_chamber = cfmGetValueReal(hModel, "p1@general_hydraulic_chamber")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		p1_hydraulic_4 = cfmGetValueReal(hModel, "p1@hydraulic_4")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		q_volumesensor = cfmGetValueReal(hModel, "q@volumesensor")
		ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
		WHILE((TSTOP - TIME) >= CINT)
      
			cfmRun(hModel)
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
			cfmWait(hModel)
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
			p1_general_hydraulic_chamber = cfmGetValueReal(hModel, "p1@general_hydraulic_chamber")
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
			p1_hydraulic_4 = cfmGetValueReal(hModel, "p1@hydraulic_4")
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
			q_volumesensor = cfmGetValueReal(hModel, "q@volumesensor")
			ASSERT(cfmGetLastError(hModel) == "") FATAL cfmGetLastError(hModel)
		
			WRITEF("fuelrail_cs_out.csv","%g,%g,%g,%g\n",TIME,p1_general_hydraulic_chamber,p1_hydraulic_4,q_volumesensor)

			TIME = TIME + CINT
			REPORT_REFRESH()
		END WHILE
		WRITEF("fuelrail_cs_out.csv","%g,%g,%g,%g\n",TSTOP,p1_general_hydraulic_chamber,p1_hydraulic_4,q_volumesensor)

END EXPERIMENT