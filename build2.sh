

# scons platform=windows tools=yes target=release_debug bits=64 -j8 use_lto=yes production=yes  
# scons platform=windows tools=yes target=debug  bits=64 -j8
# scons platform=windows tools=no target=release  bits=64 -j8 use_lto=yes production=yes
# scons platform=windows tools=no target=debug  bits=64 -j8

scons platform=x11 tools=yes target=release_debug  bits=64 -j8 use_llvm=yes use_lld=yes 
scons platform=x11 tools=yes target=debug  bits=64 -j8 use_llvm=yes use_lld=yes 
scons platform=x11 tools=no target=release  bits=64 -j8 use_llvm=yes use_lld=yes 
scons platform=x11 tools=no target=debug  bits=64 -j8 use_llvm=yes use_lld=yes 

scons platform=x11 tools=yes target=release_debug  bits=64 -j8 use_lto=yes production=yes
scons platform=x11 tools=yes target=debug  bits=64 -j8
scons platform=x11 tools=no target=release  bits=64 -j8 use_lto=yes production=yes
scons platform=x11 tools=no target=debug  bits=64 -j8 

# if(((godot --version) -match  "^[0-9]+\.[0-9]+\.[^\.]+")){
#   $version = $Matches[0]
#   $template_path = "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)"
#   if(!(Test-Path $template_path)){
#     New-Item "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)" -ItemType Directory
#   }
#   Copy-Item .\bin\godot.windows.debug.64.exe  "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)\windows_64_debug.exe" -Force
#   Copy-Item .\bin\godot.windows.opt.64.exe  "$($env:USERPROFILE)\AppData\Roaming\Godot\templates\$($version)\windows_64_release.exe" -Force
# }
# Set-Location ..
