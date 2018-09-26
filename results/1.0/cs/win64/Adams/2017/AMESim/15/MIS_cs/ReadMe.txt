Test setup:
1. Open Adams View. 
2. Click on "Existing Model" on the dialog box.
3. Browse to the folder containing the the SIM_SCRIPT_1.cmd and the MODEL_1.cmd files. Both should be in the same folder.
4. Select the SIM_SCRIPT_1.cmd file.
5. Ensure that the "Working Directory" is set to the same as the above folder.
6. The simulation runs and Adams View closes automatically at the end of simulation.


Viewing Results: (if the test is successful)
1. Open Adams PostProcessor.
2. Perform a File->Import->Results File from the menu.
3. Right click in the File Name(s) field, browse to the "Adams.res" file in the previous folder (in which simulation was run) and click OK.
4. In the "Result Set" field, select the PINPUT_1. This results in the inputs of Adams (outputs of FMU) getting populated in the "Component" field.
5. Select any componet and check the "Surf" check box. The graph for that variable would be displayed.
6. Click on any other variable in the "Component" field for the corresponding graph.
7. Since the .res is a proprietary format, the same results are also published in a .csv format in the same folder.


Reason for failure:
Adams does not currently support reading any variables from the FMU other than those with causality = output. Since this model has no variable with causality = output, we just mark this test as rejected.