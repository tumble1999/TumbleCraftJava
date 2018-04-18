@:loop
@echo off
if exist github.log (
mkdir githublogs
copy github.log githublogs/%date%.txt
)
title GitHub Auto Save
set status=git status
set fetch=git fetch
set add=git add
set commit=git commit
set pull=git pull
set push=git push

(%status%
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
)>>github.txt
