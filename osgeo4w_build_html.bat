@echo off

call C:\OSGeo4W\bin\o4w_env.bat
set PATH=%APPDATA%\Python\Python39\Scripts;%APPDATA%\Python\Python39\site-packages;%PATH%

set makepath=%~dp0
call %makepath%\make.bat html

timeout /t 3
