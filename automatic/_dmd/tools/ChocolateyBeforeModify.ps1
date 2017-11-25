$ErrorActionPreference = "Stop"

$destDir = Join-Path -Resolve (Get-ToolsLocation) "dmd2"
Remove-Item $destDir -Force -Recurse
exit $?
