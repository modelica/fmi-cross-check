Test setup:
1. Open SimWB Control Center GUI.
2. Click on Third Party Tools->FMU from the menu bar.
3. Click on the "Select FMU file" button and browse and select the FMU file which is to be tested.
4. Click on the "Parse FMU" button. This reads the FMU and presents the inputs and outputs in a tabular format.
5. Check the "New RTDB" checkbox, enter a name in the "Model RTDB" field and then click on the "Generate RTDB" button. This generates the RTDB for the FMU.
6. Click on "Install FMU" followed by the "Create FMU Model" button. After this step, click on the green tick button on the top left. This saves the model.
7. In the menu bar, click on Program->Scripts. This opens up the Scripts tab.
8. Select the "C Script" from the drop down menu and enter a new name for the script in the field beside the drop down menu. Then click on the Icon for creating a new script.
9. In the browser on the left hand side, you can see a folder created by that name and it internally has a .c file with the name that you provided. This is the test script.
10. Modify the .c file according to the .c file in this folder (containing the readme.txt) or delete the file and just create a new file by clicking on the appropriate icon and paste the contents of this .c file into the new file.
11. Save and click on the make icon. This creates the test script that is to be executed when running the test.
12. In the menu bar, click on Test->Tests. This opens up a Tests tab.
13. Here, create a new test, by clicking on the appropriate icon. Provide a name in the "Test Name" field.
14. Select the test script that was created above by selecting that from the "Test Script" drop down menu.
15. Select the RTDB to the one that has been created (if that is not already displayed).
16. Enter the fixed step (in secs) according to the stepping rate required by the FMU.
17. There is an empty space with the message "Right click in this field to add models to the test". Right click on that field, expand the FMU models and select the model that has been imported.
18. After this step, click on the green tick button on the top left. This saves the test.
19. In the menu bar, click on Test->Test Sessions. This opens up a Test Sessions tab.
20. Create a new test session for the newly added test by creating on the appropriate icon. In the "New Session Parameters" tab, select the scheduler to be "Simulation" from the drop down menu.
21. Leave all other fields as is. Click on the green tick button on the top left. This saves the test session.
22. Navigate to the "Run <session name>" tab. Click on the Run button. This runs the test and automatically stops after the scheduled time in the test script.
23. Since Adams FMU is tool based, ensure that Adams is first installed on the PC as root before running the test. This sets up the required softlinks for execution of Adams properly.


Viewing Results: (if the test is successful)
1. Click on the data logger icon (shown as DL in red color) just below the menu bar (in the icons bar). This opens up the data logger window.
2. Select the test that has just been executed from the left hand side menu. Expand it and double click on the test session. This displays the I/O variables which can be plotted.
3. Drag the output variable onto the graph on the right hand side. There are two output variables (one followed by Alt and the other followed by CVT). Select the one which has the name followed by CVT.
4. The graph for the output can be seen. Right-click on the graph and drag left to zoom out in the graph (x-axis). Right-click and drag right to zoom in (x-axis).
5. For each plot on the graph, there is a square box that is created followed by the signal name (similar to a legend). Right-click on the square box to auto-scale the y-axis.
6. There is a table icon on the top. Clicking it would split the pane and create place for a table below. Drag the variable from the left had side browser again into the table pane. This creates the table with the values of the variable at different frames.
7. You can select the columns post which the save icon gets activated. By clicking on this icon, the table can be saved as a .csv file format.


Notes:
All outputs match