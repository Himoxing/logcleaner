
@echo off
title LogCleaner

:mains
echo.
echo.
echo.
echo                         		       	 HELLO %Username%
echo                       		  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
echo                        			       Cleaner Open Source
echo                       	       	   https://github.com/Himoxing/logcleaner
echo                        	          -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
echo.
echo.
echo.
echo.
echo -- -- -- -- -- --  
echo File Cleaner:
echo -- -- -- -- -- --  
echo W - WU Cached
echo L - logow
echo T - Tempory
echo.
echo.
echo -- -- -- -- -- --  
echo Settings:
echo -- -- -- -- -- -- 
echo C - Motive
echo.
echo.
echo -- -- -- -- -- -- 
echo Other:
echo -- -- -- -- -- -- 
echo E - EXIT
echo.
echo.
set /p main-options=Options:
if %main-options%==W goto 3
if %main-options%==L goto 2
if %main-options%==T goto 1
if %main-options%==E goto exit
if %main-options%==C goto color
if %main-options%==w goto 3
if %main-options%==l goto 2
if %main-options%==t goto 1
if %main-options%==e goto exit
if %main-options%==c goto color


:color
cls
echo.
echo -- -- -- -- -- --  
echo BACKGROUND:
echo -- -- -- -- -- --  
echo Coming Soon
echo. 
echo.
echo.
echo.
echo -- -- -- -- -- --  
echo TEXT COLOR:
echo -- -- -- -- -- --  
echo TCW - WHITE
echo TCG - GREEN 
echo TCB - BLUE
echo TCY - YELLOW
echo TCR - RED
echo.
echo.
set /p motive-options=Options:
if %motive-options%==TCW goto TCW
if %motive-options%==TCG goto TCG
if %motive-options%==TCB goto TCB
if %motive-options%==TCY goto TCY
if %motive-options%==TCR goto TCR
if %motive-options%==tcw goto TCW
if %motive-options%==tcg goto TCG
if %motive-options%==tcb goto TCB
if %motive-options%==tcy goto TCY
if %motive-options%==tcr goto TCR


:TCW
cls
color 7
goto mains
:TCG
cls
color 2
goto mains
:TCB
cls
color 1
goto mains
:TCY
cls
color 6
goto mains
:TCR
cls
color 4
goto mains

:exit
cls
exit
:3
cls
echo Czyszczenie...
net stop wuauserv
net stop UsoSvc
net stop bits
net stop dosvc
@echo
echo Deleting Windows Update Files
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
msg  %username% /time:0 Cleaning Complete!
goto mains


:2
cls
echo Czyszczenie...
cd/
@echo
del *.log +/a /s /q /f
msg  %username% /time:0 Cleaning Complete!
goto mains

:1
cls
@echo off
echo czyszczenie...
RD /S /Q %temp%
MKDIR %temp%
@echo
takeown /f "%temp%" /r /d y
@echo
takeown /f "C:\Windows\Temp" /r /d y
@echo
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
@echo
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
msg   %username% /time:0 Cleaning Complete!
goto mains