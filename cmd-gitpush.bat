echo off
call :main %* 2>>%0
pause
goto :eof
:main
pause
echo #########################
echo # GIT ADD, COMMIT, PUSH
echo #########################
setlocal
echo "hoehogehoge" > hoge.txt
set GIT_EXE=git
set SYMBOL=SYMBOL[%1]
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
pauseWarning: Permanently added the RSA host key for IP address '192.30.255.112' to the list of known hosts.
From github.com:ippsio/mt4lines
 * branch            master     -> FETCH_HEAD
