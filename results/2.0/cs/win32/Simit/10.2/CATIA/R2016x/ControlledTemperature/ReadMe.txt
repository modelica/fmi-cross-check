To import the FMU in SIMIT open the Component Type Editor (CTE) and choose create component.
Select the FMU using the optional Functional Mock-up Unit dialog.
The FMU gets automatically converted into a valid SIMIT component.

To use/instantiate the FMU in a SIMIT flow-sheet diagram, select the Open Library button in the "Own components" section of the components tab.
Choose the folder, where you created the FMU (s. import in CTE).
All available FMUs in that folder will be listed as library components, which can be dragged and dropped like any other SIMIT component.

To provide inputs please use a characteristic from the STANDARD->AnalogExtended library (with x as time and y as values) and use a SimulationTime component (STANDARD->Misc) to set the x input values.