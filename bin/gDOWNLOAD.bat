@:loop
@echo off
title GitHub Auto Save
set status=git status
set fetch=git fetch
set pull=git pull

ping localhost>nul
%status%
echo FETCHING...
%fetch%
echo.
echo.
%status%
echo PULLING
%pull%
echo.
echo.
goto :loop