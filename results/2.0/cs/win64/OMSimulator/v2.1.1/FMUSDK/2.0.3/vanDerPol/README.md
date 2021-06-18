To simulate FMU `vanDerPol.fmu` with OMSimulator run
```bash
$ wine64 /fmi-cross-check/OMSimulatorBinaries/OMSimulator-mingw64/bin/OMSimulator.exe --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --intervals=500 --suppressPath=true --timeout=60 vanDerPol.lua
```

Lua file:
```lua
-- Lua file for vanDerPol.fmu
oms_setTempDirectory("temp")
oms_newModel("model")
oms_addSystem("model.root", oms_system_wc)

-- instantiate FMU
oms_addSubModel("model.root.fmu", "../../../../../../../../../fmus/2.0/cs/win64/FMUSDK/2.0.3/vanDerPol/vanDerPol.fmu")

-- Simulation settings
oms_setSignalFilter("model", ".*")
oms_setResultFile("model", "vanDerPol_out.csv")
oms_setStartTime("model", 0.0)
oms_setStopTime("model", 5.0)
oms_setTolerance("model", 0.01)
initialStepSize, minimumStepSize, maximumStepSize, status = oms_getVariableStepSize("model")
oms_setVariableStepSize("model", 0.1, minimumStepSize, 0.1)
oms_setFixedStepSize("model", 0.1)

-- Instantiate, initialize and simulate
oms_instantiate("model")
oms_initialize("model")
oms_simulate("model")
oms_terminate("model")
oms_delete("model")
```

See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.