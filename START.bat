@echo off
(echo @echo off
echo echo.^>restart.tmp
echo goto :eof
)>restart.bat
:restart
call gsync.bat
call spigot.bat
if exist restart.tmp (
del restart.tmp
goto :restart
)
del restart.bat
got :eof
