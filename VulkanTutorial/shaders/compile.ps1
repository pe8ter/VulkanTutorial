$src = "src"
$dist = "dist"
$shaderCompiler = "$env:VULKAN_SDK\Bin\glslc.exe"
$scriptDir = Split-Path $MyInvocation.MyCommand.Path

Push-Location $scriptDir

New-Item -Path $dist -ItemType directory -Force > $null

Invoke-Expression "$shaderCompiler $src\shader.vert -o $dist\vert.spv"
Invoke-Expression "$shaderCompiler $src\shader.frag -o $dist\frag.spv"

Pop-Location
