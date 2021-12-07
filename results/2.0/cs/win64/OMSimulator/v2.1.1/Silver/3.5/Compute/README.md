The following command and script was used to simulate `Compute.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/Silver/3.5/Compute --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 Compute.lua
```

Compute.lua:
```lua
-- lua file for Compute.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/Silver/3.5/Compute/Compute.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/win64/Silver/3.5/Compute/Compute_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.x_0', 'model.root.fmu.x_0')
oms_addConnection('model.root.input.x_1', 'model.root.fmu.x_1')
oms_addConnection('model.root.input.x_2', 'model.root.fmu.x_2')

-- simulation settings
oms_setResultFile('model', 'Compute_out.csv')
oms_setLoggingInterval('model', 0.008)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 4.0)
oms_setTolerance('model', 1e-06, 0.01)
oms_setFixedStepSize('model', 0.01)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

