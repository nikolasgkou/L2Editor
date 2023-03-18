@echo off
for /f "tokens=2-4 delims=/ " %%a in ("%date%") do set "datestr=%%c-%%a-%%b"
for /f "tokens=1-2 delims=:." %%a in ("%time%") do set "timestr=%%a%%b"
set "filename=%~n1_beforedecrypt_%datestr%_%timestr%%~x1"
if not exist "%~dp0\backup" mkdir "%~dp0\backup"
copy /Y %1 "%~dp0\backup\%filename%"
java -jar ./editor.jar decrypt %1
pause