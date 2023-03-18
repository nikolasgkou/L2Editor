@echo off 
if not exist "%~dp0\backup" mkdir "%~dp0\backup"
java -jar ./editor.jar decrypt %1
pause