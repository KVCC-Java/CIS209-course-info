@echo off
REM ---------------------------------------------------------------------------
REM     GitHub Classroom pull homework
REM 
REM		INSTRUCTIONS:
REM		1) Run this file specifying the homework name
REM ---------------------------------------------------------------------------

setlocal
@echo 

if "x%1x" == "xx" goto displayUsage

set "CURRENT_DIR=%cd%"

cd "%CURRENT_DIR%\%1-student1"
git pull
git tag -a grading -m "grading this version"
git push origin grading

cd "%CURRENT_DIR%\%1-student1"
git pull
git tag -a grading -m "grading this version"
git push origin grading

goto end

:displayUsage
echo.
echo Usage: pullHW [homework name]
pause
goto end

:end
cd "%CURRENT_DIR%"
