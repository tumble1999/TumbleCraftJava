@echo off
del restart.tmp
del restart.bat
rem call gsync.bat
echo [Pretend] GitHub Sync
pause
title [Server] TumbleCraft

(rem echo @echo off
echo echo.^>restart.tmp
echo goto :eof
)>restart.bat

:restart
echo [Pretend] Server Started
pause
start restart.bat
echo [Pretend] Someone asked to restart the Server
pause
rem call spigot.bat
rem call gsync.bat
echo [Pretend] GitHub Sync
pause
if exist restart.tmp (
del restart.tmp
echo [Pretend] Server Restarting
pause
goto :restart
)
echo [Pretend] Server Stopping
del restart.bat
pause
goto :eof
