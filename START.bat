@echo off
if "%1"=="restart" (
goto :restart
)
del restart.bat
call gsync.bat

(echo @echo off
echo start START.bat restart
)>restart.bat

:restart
call spigot.bat
gsync.bat
goto :eof
