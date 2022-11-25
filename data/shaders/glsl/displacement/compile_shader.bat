@echo off
"%VULKAN_SDK%\Bin\glslc.exe" "displacement.tese" -o "displacement.tese.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "displacement.tesc" -o "displacement.tesc.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "base.vert" -o "base.vert.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "base.frag" -o "base.frag.spv"
pause