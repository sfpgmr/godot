# Set-Location godot 
git fetch upstream
git checkout 3.x
git merge upstream/3.x
git checkout sfpgmr
git merge 3.x
scons platform=windows target=release_debug -j8
scons platform=windows target=debug -j8
scons platform=windows tools=no target=release -j8
scons platform=windows tools=no target=debug -j8
if (((& .\bin\godot.windows.opt.tools.64.exe --version) -match "^[0-9]+\.[0-9]+\.[^\.]+")) {
  $version = $Matches[0]
  $template_path = "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)"
  if(!(Test-Path $template_path)){
    New-Item "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)" -ItemType Directory
  }
  Copy-Item .\bin\godot.windows.debug.64.exe  "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)\windows_64_debug.exe" -Force
  Copy-Item .\bin\godot.windows.opt.64.exe  "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)\windows_64_release.exe" -Force
}
# Set-Location ..
