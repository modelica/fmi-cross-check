***************************************************************
FMU Import into Easy5
***************************************************************

1. Open an Easy5 model, or start a new model. 

2. Add an FMI Extension component to the model. 

3. Click on the "Select/Configure FMU" button in the Extension
component data table (CDT).  At the prompt, select the FMU to be imported.   
It is best if the FMU resides in the same directory as the Easy5 model.

3. Variables with "input" or "output" causality will be automatically added 
to the CDT.  Follow the prompts to select variables of other causality to 
be visible in the Easy5 model.

4. If the test FMU is shipped with a <FMUName>_in.csv file, then add a 
GP/XL component to the model and import the <FMUName>_in.csv into the 
table.  Then connect the XL outputs to the appropriate Extension CDT 
inputs.  

5. Make connections as with any other Easy5 component.

6. Run the analyses.

Note: for detailed documentation of FMU Import into Easy5,
click on the "Info" button in the Extension CDT. 

Non-default analysis settings for this model:

  Time Increment: 0.2
