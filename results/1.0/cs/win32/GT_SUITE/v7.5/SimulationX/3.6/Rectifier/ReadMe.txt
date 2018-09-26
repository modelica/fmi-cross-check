===============================================================
Description of how to import and simulate an FMU
===============================================================


1. Create a new empty GT model 

2. Add an ‘FMUImport’ component into the model. 
You will be prompted to specify the name of the FMU to import.
The tool automatically detects inputs, outputs and parameters.

3. Add as many ‘SignalGenerator’ components as the number of inputs
of the FMU. Create 'ProfileTransient' objects by copying the reference
input profile. Connect the SignalGenerator components to the FMUImport
component.

4. Add as many ‘SignalTerminator’ components as the number of outputs
of the FMU. Turn on the Plots for those components. Connect them to 
the FMUImport component.

5. From the Run menu, specify simulation time and run the model.


===============================================================
Copyright 2015 © Gamma Technologies, Inc. All rights reserved. 
===============================================================
