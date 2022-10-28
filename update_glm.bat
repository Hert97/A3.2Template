rem Setup
@echo off
rem GLM
set glm_path= glm/
rmdir %glm_path% /S /Q
git clone https://github.com/g-truc/glm.git %glm_path%