@echo off
echo.
echo      *
echo     /^\
echo    / ^ \
echo   / .-. \
echo  ^| (o o) ^|
echo  ^|   ^   ^|
echo   \_____/
echo    ^|   ^|
echo  __^|___^|__
echo ^|_________^|
echo    ^|   ^|
echo   /^|   ^|\
echo  / ^|   ^| \
echo.
echo  === DUNGEON SAVE SYSTEM ===
echo.
set /p NOM="Save name (max 20 characters): "
set NOM=%NOM:~0,20%

echo.
echo Choose an option:
echo   GIT - Add and commit to Git
echo   ZIP - Create a zip archive
echo.
set /p CHOICE="Your choice (GIT/ZIP): "

if /i "%CHOICE%"=="GIT" goto GIT
if /i "%CHOICE%"=="ZIP" goto ZIP
echo Invalid choice.
goto END

:GIT
git add .
git commit -m "%NOM%"
echo Save "%NOM%" committed successfully!
goto END

:ZIP
powershell -command "Compress-Archive -Path '.\*' -DestinationPath ($env:NOM + '.zip') -Force"
echo Save "%NOM%.zip" created successfully!
goto END

:END
pause
