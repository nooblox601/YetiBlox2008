::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAlRWgWGAE+1EbsQ5+n//Na+p1kUGucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title YetiBlox2008 CLI

set "YETI=%ProgramFiles%\YetiBlox2008"

if "%~1"=="" goto help
if /i "%~1"=="init" goto init
if /i "%~1"=="update" goto update
if /i "%~1"=="version" goto version
if /i "%~1"=="help" goto help

echo.
echo Unknown command: %1
echo Type "Yeti help" for a list of commands.
exit /b 1

:init
cls
title YetiBlox2008

echo.
echo ============================
echo        YetiBlox2008
echo ============================
echo.

echo Loading #
timeout /t 1 /nobreak >nul
cls

echo ============================
echo        YetiBlox2008
echo ============================
echo.
echo Loading ##
timeout /t 1 /nobreak >nul
cls

echo ============================
echo        YetiBlox2008
echo ============================
echo.
echo Loading #####
timeout /t 1 /nobreak >nul
cls

echo ============================
echo        YetiBlox2008
echo ============================
echo.
echo Loading ##########
timeout /t 1 /nobreak >nul
cls

echo ============================
echo        YetiBlox2008
echo ============================
echo.
echo Loading ####################
timeout /t 1 /nobreak >nul

echo.
echo Loaded!
timeout /t 1 >nul

start "" "%YETI%\Roblox.exe"
exit /b

:update
echo.
echo Updating YetiBlox2008...
git -C "%YETI%" pull
echo.
echo Update finished.
pause
exit /b

:version
echo.
echo YetiBlox2008 CLI
echo Version: 1.2
exit /b

:help
echo.
echo YetiBlox2008 CLI v1.2
echo.
echo Commands:
echo.
echo   init      Start YetiBlox2008
echo   update    Update the installation
echo   version   Show the current version
echo   help      Show this help message
echo.
exit /b