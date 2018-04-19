@echo off
del restart.tmp
del restart.bat
start gsync.bat
(echo @echo off
echo echo.^>restart.tmp
)>restart.bat
:restart
call spigot.bat
start gsync.bat
if exist restart.tmp (
del restart.tmp
goto :restart
)
del restart.bat
got :eof
