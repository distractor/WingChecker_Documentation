@echo off
REM Author: Mitja Jancic.
REM This is a helper script to install the WingChecker AddIn.
REM See Documentation page: https://distractor.github.io/WingChecker_Documentation/
REM Script will:
REM 1. Install digital code certificate
REM 2. Install WingChecker AddIn.
REM 
REM Enjoy!

echo Greetings from WingChecker setup script!
goto check_Permissions

:check_Permissions
    echo Administrative permissions required to successfully run this script. Detecting permissions...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Administrative permissions confirmed.
        goto run_script
    ) else (
        echo Current permissions inadequate. Please run this script as Administrator.
    )
    
    pause >nul

:run_script
title WingChecker setup script
echo Downloading certificate...
curl.exe -o WingChecker.cer https://distractor.github.io/WingChecker_Documentation/files/MyKey.cer
echo Certififcate downloaded. Now Installing it to "TrustedPeople" store...
Certutil -addStore TrustedPeople WingChecker.cer 
echo Certificate installed.
echo Downloading WingChecker AddIn...
curl.exe -o WingChecker.exe https://distractor.github.io/WingChecker_Documentation/files/WingChecker/setup.exe
echo downloaded
echo Installing WingChecker AddIn...
WingChecker.exe
echo WingChecker installer started. Follow the instructions there. 
echo After successful installation, you can close this window.
pause