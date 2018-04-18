@echo off
(echo @echo off
echo echo.^>restart.tmp
echo call gsync.bat
echo exit
)>restart.bat
:restart
call spigot.bat
if exist restart.tmp (
del restart.tmp
goto :restart
)
del restart.bat
got :eof
