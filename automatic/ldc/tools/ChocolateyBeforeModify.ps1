if(!$PSScriptRoot) {
  $PSScriptRoot = Split-Path $MyInvocation.MyCommand.Path -Parent
}
$UninstallScript = Join-Path $PSScriptRoot "ChocolateyUninstall.ps1"
& $UninstallScript
