' Automatically Run provided SimulationX FMU in FMU Compliance Checker.
' Author:		Bastian Binder
' Copyright: 	ITI GmbH, Dresden, Germany
'
' Version:		2014/03/04

If LCase( Right( WScript.FullName, 12 ) ) = "\cscript.exe" Then
	' Introductory notes
	WScript.Echo "*    Run automated FMU-Check"
	WScript.Echo "*    Copyright: 2014, ITI GmbH, Dresden, Germany"
	WScript.Echo "*    Contact:   Bastian Binder, binder@itisim.com"
	WScript.Echo "*    Version:   2014-03-04"
	WScript.Echo "_________________________________________________"


	' Get the paths to the current directory, the directory containing the FMU Checker and
	' the directory naming the platform.
	dim fso, currentFolder, platform, fFolder, fmuCheckZIP, folders, objShell, fmuCheckVersion, folder, fmuChecker, options, fmu
	set fso = CreateObject("Scripting.FileSystemObject")
	set currentFolder = fso.GetFolder(Replace(WScript.ScriptFullName, WScript.ScriptName, ""))
	fmuCheckVersion = "2.0b1"

	WScript.Echo "Path:              " & currentFolder.Path
	WScript.Echo "Name:              " & currentFolder.Name
	WScript.Echo "Parent:            " & currentFolder.ParentFolder

	' Determine the platform used for the FMU
	call GetPlatform (currentFolder.ParentFolder)
	WScript.Echo "Platform:          " & platform
	' Fetch the Zip-file containing the FMU ComplianceChecker
	call GetFMUCheckZIP (currentFolder.ParentFolder)
	WScript.Echo "ComplianceChecker: " & fmuCheckZIP.Path
	WScript.Echo "----"

	' Retrieve FMU Check from ZIP file
	dim FilesInZip
	set objShell = CreateObject("Shell.Application")
	set FilesInZip = objShell.NameSpace(fmuCheckZIP.Path).items
	WScript.Echo "Files found in archive: " & CStr(FilesInZip.Count)
	for each fz in filesInZip 'There should only be one
		If fso.FolderExists(fso.BuildPath(currentFolder.Path, Replace(fmuCheckZIP.name, ".zip", ""))) Then
			fso.DeleteFolder(fso.GetFolder(fso.BuildPath(currentFolder.Path, Replace(fmuCheckZIP.name, ".zip", ""))))
		End If
		objShell.NameSpace(currentFolder.Path).CopyHere(fz)
	Next
	Set objShell = nothing
	set FilesInZip = nothing
	WScript.Echo "ZIP extracted to:       " & fso.BuildPath(currentFolder.Path, Replace(fmuCheckZIP.name, ".zip", ""))

	' Get the file to the executable
	FindTheEXE (fso.GetFolder(fso.BuildPath(currentFolder.Path, "FMUChecker-" & fmuCheckVersion & "-" & platform)))
	WScript.Echo "fmuCheck located:       " & fmuChecker.Name
	WScript.Echo "----"

	' Get the Path to the FMU
	FindTheFMU (currentFolder)
	WScript.Echo "fmu located:            " & fmu.Name
	WScript.Echo "----"

	' Run the FMU Check
	set objShell = WScript.CreateObject("WScript.Shell")
	set options = CreateObject("Scripting.Dictionary")
	options.Add "Engine1b.fmu", "-c "","" -s 0.5 -h 1e-6 -l 4 -n 1000 -f"
	options.Add "CoupledClutches.fmu", "-c "","" -s 1.5 -h 1e-4 -l 4 -f -i """ & currentFolder.Path & "\CoupledClutches_in.csv"""
	options.Add "ControlledTemperature.fmu", "-c "","" -s 10 -h 1e-2 -l 4 -f -i """ & currentFolder.Path & "\ControlledTemperature_in.csv"""
	options.Add "Rectifier.fmu", "-c "","" -s 0.1 -h 1e-7 -l 4 -f"
	options.Add "DFFREG.fmu", "-c "","" -s 1.5 -h 1e-4 -l 4 -f"
	WScript.Echo "Running the FMU check with following options:"
	WScript.Echo options(fmu.Name)
	WScript.Echo " "
	WScript.Echo "Running FMU Check"
	WScript.Echo "    log file:    " & Replace(fmu.Name, ".fmu", "_script.log")
	WScript.Echo "    data file:   " & Replace(fmu.Name, ".fmu", "_script.csv")
	objShell.Run """" & fmuChecker.Path & """ -e """ & Replace(fmu.Path, ".fmu", "_script.log") & """ -o """ & Replace(fmu.Path, ".fmu", "_script.csv") & """ " & options(fmu.name) & " """ & fmu.Path & """", 1, true

	' Clean up
	WScript.Echo "----"
	WScript.Echo "Cleaning up..."
	If fso.FolderExists(fso.GetFolder(fso.BuildPath(currentFolder.Path, Replace(fmuCheckZIP.name, ".zip", "")))) Then
		fso.DeleteFolder(fso.GetFolder(fso.BuildPath(currentFolder.Path, Replace(fmuCheckZIP.name, ".zip", ""))))
	End If
	Set objShell = nothing
	Set fso = nothing
	Set currentFolder = nothing
	Set fFolder = nothing
	Set fmuCheckZIP = nothing
	Set fmuChecker = nothing
	Set fmu = nothing
	Set options = nothing
	WScript.Echo "done."
Else
	CreateObject( "WScript.Shell" ).Run "cscript //nologo """ & WScript.ScriptFullName & """"
	WScript.Quit
End if


' ************************************************************************************************
' * Procedure Definitions
' ************************************************************************************************
' Procedure determining the platform by recursively stepping up the folder structure until either
' the folder "win32" or "win64" is found.
' INPUTS:	fFolder		Folder object at which to start
Sub GetPlatform(fFolder)
	If StrComp(fFolder.Name, "win32") = 0 or StrComp(fFolder.Name, "win64") = 0 Then
		platform = fFolder.Name
	Else
		call GetPlatform (fFolder.ParentFolder)
	End If
End Sub

' Simple Procedure to find the zip file containing the FMU ComplianceChecker in use
' INPUTS:	fFolder		Folder object at which to start search
Sub GetFMUCheckZIP(fFolder)
	dim flag10, flag20, flagCC, files, file
	Set folders = fFolder.SubFolders
	For Each folder in folders
		If StrComp(Folder.Name, "FMI_1.0") = 0 Then
			flag10 = true
		End If
		If StrComp(Folder.Name, "FMI_2.0") = 0 Then
			flag20 = true
		End If
		If StrComp(Folder.Name, "Compliance-Checker") = 0 Then
			flagCC = true
		End If
	Next
	If flag10 and flagCC Then
		Set fFolder = fso.GetFolder(fso.BuildPath(fFolder.Path, "Compliance-Checker"))
		Set files = fFolder.Files
		For Each file in files
			If StrComp(file.Name, "FMUChecker-" & fmuCheckVersion & "-" & platform & ".zip") = 0 Then
				Set fmuCheckZIP = file
			End If
		Next
	Else
		GetFMUCheckZIP (fFolder.ParentFolder)
	End If
End Sub

' Procedure to return the fmuCheck.win*.exe-file as a file object
' INPUTS:	fFolder		Folder object containing the exe
Sub FindTheEXE(fFolder)
	dim files, file
	Set files = fFolder.Files
	for each file in files
		If StrComp(fso.GetExtensionName(file.Path), "exe") = 0 Then
			If StrComp(file.Name, "fmuCheck." & platform & ".exe") = 0 Then
				Set fmuChecker = file
			End If
		End If
	Next
End Sub

Sub FindTheFMU(fFolder)
	dim files, file
	Set files = fFolder.Files
	for each file in files
		If StrComp(fso.GetExtensionName(file.Path), "fmu") = 0 Then
			Set fmu = file
		End If
	Next
End Sub
