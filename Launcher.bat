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
::Zh4grVQjdCyDJGyX8VAjFAlRWgWGAE+1EbsQ5+n//Naro1gTV+o6arP326GAI+gW+AvhbZNN
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal EnableExtensions EnableDelayedExpansion

set "MODS_DIR=%~dp0Mods"
set "CLIENT_DIR=C:\Users\revad\Downloads\Launcher\YetiBloxClient"
set "CLIENT_EXE=%CLIENT_DIR%\Roblox.exe"

if not exist "%MODS_DIR%" mkdir "%MODS_DIR%"

:MENU
cls

echo ---------------------------------------------------
echo -                                                 -
echo -                 -----     -----                 -
echo -                 \    \   /    /                 -
echo -                  \    \ /    /                  -
echo -                   \         /                   -
echo -                    \       /                    -
echo -                     ^|     ^|                     -
echo -                     ^|     ^|                     -
echo -                     ^|     ^|                     -
echo -                     -------                     -
echo ---------------------------------------------------
echo.
echo start client,
echo      or
echo the mod?
echo.
echo ==================================================
echo                    MOD LAUNCHER
echo ==================================================
echo.
echo [C] Iniciar Client
echo.
echo Mods encontrados:
echo.

set "COUNT=0"

for /d %%D in ("%MODS_DIR%\*") do (
    set /a COUNT+=1
    set "MOD_!COUNT!=%%~fD"
    set "NAME_!COUNT!=%%~nxD"

    set "INFO="

    rem ==========================================
    rem MODOS COM SHADERS
    rem ==========================================

    echo %%~nxD | findstr /i /e /c:"E-Shaders" >nul
    if not errorlevel 1 set "INFO=[NOVETUS - E + SHADERS]"

    echo %%~nxD | findstr /i /e /c:"S-Shaders" >nul
    if not errorlevel 1 set "INFO=[NOVETUS - S + SHADERS]"

    echo %%~nxD | findstr /i /e /c:"M-Shaders" >nul
    if not errorlevel 1 set "INFO=[NOVETUS - M + SHADERS]"

    rem ==========================================
    rem SOMENTE SHADERS
    rem ==========================================

    if not defined INFO (
        echo %%~nxD | findstr /i /e /c:"-Shaders" >nul
        if not errorlevel 1 set "INFO=[NOVETUS - SHADERS]"
    )

    rem ==========================================
    rem NOVETUS E
    rem ==========================================

    if not defined INFO (
        echo %%~nxD | findstr /i /e /c:"E" >nul
        if not errorlevel 1 set "INFO=[NOVETUS - E]"
    )

    rem ==========================================
    rem NOVETUS S
    rem ==========================================

    if not defined INFO (
        echo %%~nxD | findstr /i /e /c:"S" >nul
        if not errorlevel 1 set "INFO=[NOVETUS - S]"
    )

    rem ==========================================
    rem NOVETUS M
    rem ==========================================

    if not defined INFO (
        echo %%~nxD | findstr /i /e /c:"M" >nul
        if not errorlevel 1 set "INFO=[NOVETUS - M]"
    )

    if defined INFO (
        echo %%~nxD !INFO!
    ) else (
        echo %%~nxD
    )
)

if "%COUNT%"=="0" (
    echo Nenhum mod encontrado!
)

echo.
echo [R] Atualizar lista
echo [0] Sair
echo.
echo ==================================================
echo.

set "CHOICE="
set /p "CHOICE=Digite o nome do mod: "

if /i "%CHOICE%"=="C" goto CLIENT
if /i "%CHOICE%"=="R" goto MENU
if "%CHOICE%"=="0" goto EXIT

set "FOUND_DIR="

for /d %%D in ("%MODS_DIR%\*") do (
    if /i "%%~nxD"=="%CHOICE%" (
        set "FOUND_DIR=%%~fD"
    )
)

if not defined FOUND_DIR (
    echo.
    echo Mod "%CHOICE%" nao encontrado!
    echo.
    pause
    goto MENU
)

set "FOUND_EXE="

for /r "%FOUND_DIR%" %%E in (*.exe) do (
    if not defined FOUND_EXE set "FOUND_EXE=%%~fE"
)

if not defined FOUND_EXE (
    echo.
    echo Nenhum .exe encontrado dentro de:
    echo %FOUND_DIR%
    echo.
    pause
    goto MENU
)

echo.
echo Abrindo %CHOICE%...
echo.

for %%E in ("%FOUND_EXE%") do (
    start "" /D "%%~dpE" "%FOUND_EXE%"
)

echo Mod iniciado!
echo.
pause
goto MENU


:CLIENT
cls

echo ---------------------------------------------------
echo -                                                 -
echo -                 -----     -----                 -
echo -                 \    \   /    /                 -
echo -                  \    \ /    /                  -
echo -                   \         /                   -
echo -                    \       /                    -
echo -                     ^|     ^|                     -
echo -                     ^|     ^|                     -
echo -                     ^|     ^|                     -
echo -                     -------                     -
echo ---------------------------------------------------
echo.
echo Iniciando YetiBlox Client...
echo.

if not exist "%CLIENT_EXE%" (
    echo [ERRO] Roblox.exe nao encontrado!
    echo.
    echo Caminho:
    echo %CLIENT_EXE%
    echo.
    pause
    goto MENU
)

start "" /D "%CLIENT_DIR%" "%CLIENT_EXE%"

echo.
echo Cliente iniciado.
echo.
pause
goto MENU


:EXIT
endlocal
exit /b