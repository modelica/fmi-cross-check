The following command and script was used to simulate `DiscreteController.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/solidThinking_Activate/2020/DiscreteController --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 DiscreteController.lua
```

DiscreteController.lua:
```lua
-- lua file for DiscreteController.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/solidThinking_Activate/2020/DiscreteController/DiscreteController.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/win64/solidThinking_Activate/2020/DiscreteController/DiscreteController_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.Reference_angle', 'model.root.fmu.Reference_angle')

-- simulation settings
oms_setResultFile('model', 'DiscreteController_out.csv')
oms_setLoggingInterval('model', 0.1)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 10.0)
oms_setTolerance('model', 0.0001, 0.0001)
oms_setFixedStepSize('model', 0.02)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

