$ErrorActionPreference = "SilentlyContinue"

# Automatically Updated
$version = '1.17.0'
# /Automatically Updated

Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win32-msvc"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win64-msvc"
