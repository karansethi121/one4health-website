@echo off
echo Starting OpenClaw Monitor Dashboard...
echo.
echo Please choose an option:
echo 1. Open directly in browser (simple mode)
echo 2. Start HTTP server on port 8080
echo.
set /p choice="Enter choice (1 or 2): "

if "%choice%"=="1" (
    echo Opening dashboard in browser...
    start "" "C:\Users\Karan\.openclaw\workspace\monitor-dashboard\index.html"
    echo Dashboard opened! Close this window to exit.
    pause
) else if "%choice%"=="2" (
    echo Starting HTTP server on port 8080...
    echo Dashboard will be available at: http://localhost:8080
    echo Press Ctrl+C to stop the server.
    echo.
    cd /d "C:\Users\Karan\.openclaw\workspace\monitor-dashboard"
    python -m http.server 8080
) else (
    echo Invalid choice. Please run the script again.
    pause
)