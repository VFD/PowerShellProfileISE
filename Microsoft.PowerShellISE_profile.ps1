<#
.SYNOPSIS
Profile for the PowerShell ISE
#>


# to simplify Access
$MyPowerShell = "$(split-path $profile)"
$MyScripts = "$(split-path $profile)\Scripts"
$MyScriptsDev = "$(split-path $profile)\ScriptsDev"
$MyModules = "$(split-path $profile)\Modules"
$MyDocs    =  [environment]::GetFolderPath('MyDocuments')
$MyDesktop =  [environment]::GetFolderPath('Desktop')
$MyProjects = "$MyDocs\Projects"
$MyTemp = "C:\Temp"


# No need to Add path for modules
# Only for Scripts, at the beginning
$env:Path = $MyScripts + ";" + $env:Path

# -----[EOP]------------------------------------------------------------