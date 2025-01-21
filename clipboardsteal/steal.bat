@echo off
title clipboard steal v1.0
echo press any key to start.
pause>nul
:steal
essential consolewrite ~$clipboard$
goto steal