To simulate FMU `fuelrail_cs.fmu` with OMSimulator run
```bash
$ /fmi-cross-check/OMSimulatorBinaries/OMSimulator-linux-i386/bin/OMSimulator --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 fuelrail_cs.lua
```

Lua file:
```lua
-- Lua file for fuelrail_cs.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_wc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/cs/linux32/AMESim/15/fuelrail_cs/fuelrail_cs.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "fuelrail_cs_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 0.03)
oms_setTolerance("model", 1e-05)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 1e-06, minimumStepSize, 1e-06)
oms_setFixedStepSize("model", 1e-06)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.