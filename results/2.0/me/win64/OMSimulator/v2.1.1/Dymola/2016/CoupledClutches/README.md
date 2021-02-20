To simulate FMU `CoupledClutches.fmu` with OMSimulator run
```bash
$ wine64 /fmi-cross-check/OMSimulatorBinaries/OMSimulator-mingw64/bin/OMSimulator.exe --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 CoupledClutches.lua
```

Lua file:
```lua
-- Lua file for CoupledClutches.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_sc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/me/win64/Dymola/2016/CoupledClutches/CoupledClutches.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "CoupledClutches_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 1.5)
oms_setTolerance("model", 0.0001)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 0.003, minimumStepSize, 0.003)
oms_setFixedStepSize("model", 0.003)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.