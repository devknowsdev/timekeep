@echo off
echo.
echo  TimeKeep — Local Time Tracker
echo  ================================
echo.
echo  Starting on http://localhost:8765
echo  Open that URL in your browser.
echo  Install as app via the browser menu (Install App).
echo  After install, this server can be stopped — app runs offline.
echo.
echo  Press Ctrl+C to stop the server.
echo.

cd /d "%~dp0"
python -m http.server 8765
if errorlevel 1 (
  python3 -m http.server 8765
)
pause
