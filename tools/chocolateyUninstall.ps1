$packageName = 'audioswitcher'
$exeName = "audioswitcher.exe"
$AppPathKey = "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\$exeName"

Uninstall-ChocolateyZipPackage audioswitcher AudioSwitcher_1_6_5_1.zip

If (Test-Path $AppPathKey) {Remove-Item "$AppPathKey" -Force -Recurse -EA SilentlyContinue | Out-Null}