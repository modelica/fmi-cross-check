To simulate FMU `TestModel2_sf.fmu` with OMSimulator run
```bash
$ wine64 /fmi-cross-check/OMSimulatorBinaries/OMSimulator-mingw64/bin/OMSimulator.exe --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 TestModel2_sf.lua
```

Lua file:
```lua
-- Lua file for TestModel2_sf.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_sc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/me/win64/DS_FMU_Export_from_Simulink/2.2.0/TestModel2_sf/TestModel2_sf.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "TestModel2_sf_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 10.0)
oms_setTolerance("model", 0.001)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 0.02, minimumStepSize, 0.02)
oms_setFixedStepSize("model", 0.02)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.