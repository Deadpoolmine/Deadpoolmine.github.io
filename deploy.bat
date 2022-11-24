@echo off

if "%~1" == "" (
    echo Usage: deploy.bat "Description of the deployment"
    exit /b 1
)

DEL /S "%CD%\..\themes_git_tmemp"
mkdir "%CD%\..\themes_git_tmemp"
mv "%CD%\themes\zhaoo\.git" "%CD%\..\themes_git_tmemp"
git "add" "."
git "commit" "-m" "%~1"
git "push" "origin" "main"
mv "%CD%\..\themes_git_tmemp\.git" "./themes/zhaoo"
DEL /S "%CD%\..\themes_git_tmemp"