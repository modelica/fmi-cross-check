To simulate FMU `PID_Controller.fmu` with OMSimulator run
```bash
$ /fmi-cross-check/OMSimulatorBinaries/OMSimulator-linux-amd64/bin/OMSimulator --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 PID_Controller.lua
```

Lua file:
```lua
-- Lua file for PID_Controller.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_sc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/me/linux64/JModelica.org/1.15/PID_Controller/PID_Controller.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "PID_Controller_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 4.0)
oms_setTolerance("model", 0.0001)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 0.008, minimumStepSize, 0.008)
oms_setFixedStepSize("model", 0.008)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.