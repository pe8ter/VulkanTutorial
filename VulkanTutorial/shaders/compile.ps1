$shaderCompiler = "$env:VULKAN_SDK\Bin\glslc.exe"
$scriptDir = Split-Path $MyInvocation.MyCommand.Path

Push-Location $scriptDir

Invoke-Expression "$shaderCompiler shader.vert -o vert.spv"
Invoke-Expression "$shaderCompiler shader.frag -o frag.spv"

Pop-Location
