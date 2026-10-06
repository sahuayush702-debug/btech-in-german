@echo off
echo ======================================================================
echo   B.Tech Milchwissenschaft - GitHub Pages Publisher
echo   Lade dein Lernportal auf GitHub hoch...
echo ======================================================================
echo.

git remote remove origin >nul 2>&1
git remote add origin https://github.com/sahuayush702-debug/btech-in-german.git
git branch -M main

echo Pushe Dateien zu: https://github.com/sahuayush702-debug/btech-in-german
echo (Falls ein Browserfenster aufpoppt, bestaetige kurz deinen GitHub Login)
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ======================================================================
    echo   ERFOLG! (SUCCESS!)
    echo   Deine Dateien sind jetzt auf GitHub!
    echo.
    echo   Um deinen oeffentlichen Web-Link zu aktivieren:
    echo   1. Oeffne: https://github.com/sahuayush702-debug/btech-in-german/settings/pages
    echo   2. Unter "Build and deployment" - Source: "Deploy from a branch"
    echo   3. Waehle Branch: "main" und Folder: "/ (root)" - klicke "Save".
    echo.
    echo   Dein Link ist dann in 1-2 Minuten weltweit online unter:
    echo   https://sahuayush702-debug.github.io/btech-in-german/
    echo ======================================================================
) else (
    echo.
    echo ======================================================================
    echo   HINWEIS:
    echo   Bitte stelle sicher, dass du das Repository zuerst auf GitHub erstellt hast:
    echo   https://github.com/new mit dem Namen: btech-in-german (Public)
    echo ======================================================================
)

echo.
pause
