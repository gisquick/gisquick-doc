@echo off

call C:\OSGeo4W\bin\o4w_env.bat

set makepath=%~dp0
call python3 -m pip install -r %makepath%\requirements.txt


timeout /t 3
