@echo off
:: Speed Resonator Gate 

:: Function to display the gate status
:display_status
cls
echo -------------------------------------------------
echo       Speed Resonator Gate 1 : Control Panel
echo -------------------------------------------------
echo.
echo Gate Status: %gate_status%
echo.
if "%gate_status%" == "Active" (
    echo Objects inside the gate are slowed down.
) else (
    echo Objects inside the gate are moving at Multiple Major Entity speed.
)
echo -------------------------------------------------
echo.
echo [1] Activate Gate
echo [2] Deactivate Gate
echo [3] Exit
echo.
set /p choice=Please select an option (1-3): 

:: Process user choice
if "%choice%" == "1" goto activate_gate
if "%choice%" == "2" goto deactivate_gate
if "%choice%" == "3" goto exit
goto display_status

:: Function to activate the gate
:activate_gate
set gate_status=Active
echo Activating the gate...
timeout /t 2 /nobreak >nul
goto display_status

:: Function to deactivate the gate
:deactivate_gate
set gate_status=Inactive
echo Deactivating the gate...
timeout /t 2 /nobreak >nul
goto display_status

:: Exit the simulation
:exit
echo Exiting the simulation...
timeout /t 2 /nobreak >nul
exit
