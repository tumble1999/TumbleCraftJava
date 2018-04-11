@echo off
if exist usb.tmp goto :eof
set mcserver=%cd%
cd..
mkdir usb
cd usb
echo "# usb" >> README.md
git init
git add Readme.md
git commit -m "first commit"
git remote add origin https://github.com/tumble1999/usb.git
git push -u origin master
cd %mcserver%
