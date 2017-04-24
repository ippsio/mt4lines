@echo off
echo #########################
echo # GIT PULL
echo #########################
setlocal
set GIT_EXE=%1
set SYMBOL=%2
echo CURRENT DIRECTORY=[%~dp0]
cd %~dp0

rem %GIT_EXE% pull origin master
%GIT_EXE% fetch origin master
%GIT_EXE% reset --hard origin/master

echo finish.
endlocal
