rem GLFW
set glfw_path=glfw/
rmdir "%glfw_path%" /S /Q
git clone https://github.com/glfw/glfw.git %glfw_path%
cmake -S "%glfw_path%" -B "%glfw_path%\build" -D BUILD_SHARED_LIBS=ON -D GLFW_BUILD_EXAMPLES=OFF -D GLFW_BUILD_TESTS=OFF -D GLFW_BUILD_DOCS=OFF
cmake --build "%glfw_path%\build"
mkdir "%glfw_path%\bin\"
move "%glfw_path%\build\src\Debug\glfw3.dll" "%glfw_path%\bin\glfw3.dll"
move "%glfw_path%\build\src\Debug\glfw3dll.lib" "%glfw_path%\bin\glfw3.lib"