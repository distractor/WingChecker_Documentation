@echo off
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
echo Greetings from WingChecker setup script
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
echo WingChecker installed. 
start https://distractor.github.io/WingChecker_Documentation/
pause