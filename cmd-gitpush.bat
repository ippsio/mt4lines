@echo off

call :main %* 4>>%0
goto :eof
:main

echo #########################
echo # GIT ADD, COMMIT, PUSH
echo #########################
setlocal
set GIT_EXE=git
set SYMBOL=%2
echo CURRENT DIRECTORY=[%~dp0]
cd %~dp0

%GIT_EXE% fetch origin master
%GIT_EXE% merge master

echo [add]---------------------------
%GIT_EXE% add .
echo;
echo [commit]---------------------------
%GIT_EXE% commit -m "%SYMBOL%"
echo;
echo [push]---------------------------
%GIT_EXE% push origin master
echo finish.

endlocal
pause