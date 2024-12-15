@echo off
setlocal enabledelayedexpansion

REM Define URLs and paths
set OfficeToolURL=https://download.microsoft.com/download/2/7/A/27AF1BE6-DD20-4CB4-B154-EBAB8A7D4A7E/officedeploymenttool_17830-20162.exe
set TempPath=%TEMP%\OfficeInstall
set OfficeToolPath=%TempPath%\OfficeDeploymentTool.exe
set Config32Bit=%TempPath%\Configuration-32bit.xml

REM Ensure the temp folder exists
if not exist "%TempPath%" mkdir "%TempPath%"

REM Download the Office Deployment Tool
echo Downloading Office Deployment Tool...
curl -o "%OfficeToolPath%" "%OfficeToolURL%" -s --fail
if errorlevel 1 (
    echo ERROR: Failed to download Office Deployment Tool.
    exit /b 1
)

REM Extract the Office Deployment Tool
echo Extracting Office Deployment Tool...
"%OfficeToolPath%" /quiet /extract:"%TempPath%"
if errorlevel 1 (
    echo ERROR: Failed to extract Office Deployment Tool.
    exit /b 1
)

REM Create the configuration file
echo Creating the configuration file...
(
    echo ^<Configuration^>
    echo   ^<Add OfficeClientEdition="32" Channel="PerpetualVL2024"^>
    echo     ^<Product ID="ProPlus2024Volume"^>
    echo       ^<Language ID="en-us" /^>
    echo     ^</Product^>
    echo   ^</Add^>
    echo   ^<RemoveMSI /^>
    echo ^</Configuration^>
) > "%Config32Bit%"

REM Run the Office setup with the configuration file
echo Running Office setup...
"%TempPath%\Setup.exe" /configure "%Config32Bit%"
if errorlevel 1 (
    echo ERROR: Installation failed. Please check the logs.
    exit /b 1
)

echo Installation completed successfully!
exit /b 0
