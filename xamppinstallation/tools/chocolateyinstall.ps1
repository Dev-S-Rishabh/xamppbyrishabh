$ErrorActionPreference = 'Stop';
$checksum = '98a17d9100bf525cf6bfa6d690476e01a39050157b39c1337a2212b4674a1c12'
$url = 'https://excellmedia.dl.sourceforge.net/project/xampp/XAMPP%20Windows/5.6.40/xampp-windows-x64-5.6.40-1-VC11-installer.exe'

$packageArgs = @{
  packageName    = 'xamppinstallation'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xamppinstallation*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs