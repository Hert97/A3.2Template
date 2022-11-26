@echo off
"%VULKAN_SDK%\Bin\glslc.exe" "ellipsoid.tese" -o "ellipsoid.tese.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "ellipsoid.tesc" -o "ellipsoid.tesc.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "ellipsoid.vert" -o "ellipsoid.vert.spv"
"%VULKAN_SDK%\Bin\glslc.exe" "ellipsoid.frag" -o "ellipsoid.frag.spv"
pause