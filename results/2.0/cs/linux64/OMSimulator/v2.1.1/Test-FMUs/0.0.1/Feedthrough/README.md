To simulate FMU `Feedthrough.fmu` with OMSimulator run
```bash
$ /fmi-cross-check/OMSimulatorBinaries/OMSimulator-linux-amd64/bin/OMSimulator --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 Feedthrough.lua
```

Lua file:
```lua
-- Lua file for Feedthrough.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_wc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/cs/linux64/Test-FMUs/0.0.1/Feedthrough/Feedthrough.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "Feedthrough_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 2.0)
oms_setTolerance("model", 1e-05)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 0.004, minimumStepSize, 0.004)
oms_setFixedStepSize("model", 0.004)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.