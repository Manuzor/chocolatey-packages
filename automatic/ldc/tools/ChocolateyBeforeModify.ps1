$ErrorActionPreference = "SilentlyContinue"

# Automatically Updated
$version = "1.27.0"
# /Automatically Updated

Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win32-msvc"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win64-msvc"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-x86"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-x64"
