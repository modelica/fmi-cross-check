Run test.sil. Adapt parameters in Configuration tab.

Error:
1. variables names in _ref.csv are different then the ones in FMU.
   _ref.csv do not contains spaces, while some variables contains spaces in modelDescription.xml.
2. FMU archive name is different then the win32/binary/<fmuName>.dll
3. modelDescription.xml has empty <CoSimulation_StandAlone/> but according to the FMI 1.0 specification is mandatory to contain <Capabilities/>
