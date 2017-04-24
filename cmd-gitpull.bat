@echo off
echo #########################
echo # GIT PULL
echo #########################
setlocal
set GIT_EXE=git
set SYMBOL=%1
echo CURRENT DIRECTORY=[%~dp0]
cd %~dp0

rem %GIT_EXE% pull origin master
%GIT_EXE% fetch origin master
%GIT_EXE% reset --hard origin/master

echo finish.
endlocal
