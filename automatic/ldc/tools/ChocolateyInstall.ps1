$ErrorActionPreference = 'Stop';
$destDir = Get-ToolsLocation

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $destDir
  softwareName   = 'ldc*'

  # Automatically Updated
  url            = 'https://github.com/ldc-developers/ldc/releases/download/v1.12.0/ldc2-1.12.0-windows-x86.7z'
  checksum       = '48d291d136f376791eacb851d85053d50fd046cee4f6c421aa4ab77120e9e2dc'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/ldc-developers/ldc/releases/download/v1.12.0/ldc2-1.12.0-windows-x64.7z'
  checksum64     = '0ea1c4bca1c0503b422ae7e410a202c32255997681910d8cc9748a380a68df9e'
  checksumType64 = 'sha256'
  # /Automatically Updated
}

Install-ChocolateyZipPackage @packageArgs
