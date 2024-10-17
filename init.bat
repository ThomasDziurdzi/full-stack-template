@echo off

echo ---------------------------------------
echo Project Initialization
echo ---------------------------------------
echo.
echo What would you like to set up?
echo 1) Client only
echo 2) Server only
echo 3) Both
echo.

set /p choice=Enter the number of your choice [1-3]: 

if "%choice%"=="1" (
    echo Removing the 'server' folder...
    rmdir /s /q server
    echo The server has been removed.
) else if "%choice%"=="2" (
    echo Removing the 'client' folder...
    rmdir /s /q client
    echo The client has been removed.
) else if "%choice%"=="3" (
    echo Both 'client' and 'server' folders are kept.
) else (
    echo Invalid choice. Please rerun the script and enter a number between 1 and 3.
    exit /b 1
)

echo.
echo Installing dependencies...

echo Installing root dependencies...
npm install

if exist client (
    echo Installing client dependencies...
    cd client
    npm install
    cd ..
)

if exist server (
    echo Installing server dependencies...
    cd server
    npm install
    cd ..
)

echo.
echo Initialization complete! Your project is ready.
