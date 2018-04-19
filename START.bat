@echo off
del restart.tmp
del restart.bat
call gsync.bat
title [Server] TumbleCraft

(echo @echo off
echo echo.^>restart.tmp
)>restart.bat

:restart
call spigot.bat
call gsync.bat
if exist restart.tmp (
del restart.tmp
goto :restart
)
del restart.bat
goto :eof
