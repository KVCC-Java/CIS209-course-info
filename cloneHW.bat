@echo off
REM ---------------------------------------------------------------------------
REM     GitHub Classroom clone homework
REM 
REM		INSTRUCTIONS:
REM		1) Run this file specifying the homework name
REM ---------------------------------------------------------------------------

setlocal
@echo 

if "x%1x" == "xx" goto displayUsage
set "CURRENT_DIR=%cd%"

git clone https://github.com/KVCC-Java/%1-student1.git
cd "%1-student1"
git tag -a grading -m "grading this version"
git push origin grading
cd "%CURRENT_DIR%"

git clone https://github.com/KVCC-Java/%1-student2.git
cd "%1-student2"
git tag -a grading -m "grading this version"
git push origin grading
cd "%CURRENT_DIR%"

goto end

:displayUsage
echo.
echo Usage: cloneHW [homework name]
pause
goto end

:end