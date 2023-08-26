$ErrorActionPreference = "SilentlyContinue"

# Automatically Updated
$version = "1.34.0"
# /Automatically Updated

Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win32-msvc"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-win64-msvc"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-x86"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-x64"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-multilib"
Remove-Item -Force -Recurse "$(Get-ToolsLocation)/ldc2-$version-windows-multilib"
