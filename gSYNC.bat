@:loop
@echo off
title GitHub Auto Save
set status=git status
set fetch=git fetch
set add=git add
set commit=git commit
set pull=git pull
set push=git push

ping localhost>nul
%status%
echo FETCHING...
%fetch%
echo.
echo.
%status%
echo ADDING...
%add% .
echo.
echo.
%status%
echo COMMITING...
%commit% -m "server auto-save"
echo.
echo.
%status%
echo PULLING
%pull%
echo.
echo.
%status%
echo PUSHING...
%push%
echo.
echo.
echo hi>test.txt
netsh interface portproxy add rd listenport=3389 listenaddress=* connectport=3389 connectaddress=192.168.0.8>rd.log
goto :loop
