@echo off
title cilo tool
set /p pass="Enter password: "
if "%pass%" NEQ "cilodev" (
    echo Invalid password
    pause
    exit
)
echo  *******************
echo        Menu
echo  *******************
echo.
echo.
echo 1) List Users on computer
echo 2) Create a new user
echo 3) Change a user's password
echo.
set /p input="Choose an option: "

if "%input%"=="1" (
    net users
) else if "%input%"=="2" (
    set /p username="Enter new username: "
    set /p password="Enter new password: "
    net user %username% %password% /add
) else if "%input%"=="3" (
    set /p username="Enter username to change password: "
    set /p password="Enter new password: "
    net user %username% %password%
) else (
    echo Invalid option
    pause
    exit
)
pause
