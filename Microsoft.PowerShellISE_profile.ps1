<#
.SYNOPSIS
Profile for the PowerShell ISE
#>

function prompt {
	Write-Host
	Write-Host -NoNewLine "["
	Write-Host -NoNewLine (Get-Date -Format "dd/MM/yyyy | HH:mm") -ForegroundColor White
	Write-Host -NoNewLine "] "
	Write-Host -NoNewLine $env:UserName.ToLower()
	Write-Host -NoNewLine "@"
	Write-Host -NoNewLine $env:UserDomain.ToLower()
	Write-Host -NoNewLine " on "
	Write-Host -NoNewLine $env:ComputerName
	Write-Host -NoNewLine " ("
	Write-Host -NoNewLine $env:OS
	Write-Host -NoNewLine ")"
	Write-Host -NoNewLine "`n[> "
	Write-Host -NoNewLine (Get-Location).Path -ForegroundColor Red
	Write-Host -NoNewLine " <]"
	return "`nPS > "
}

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