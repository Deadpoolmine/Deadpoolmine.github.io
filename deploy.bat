@echo off

if "%~1" == "" (
    echo Usage: deploy.bat "Description of the deployment"
    exit /b 1
)

mkdir "-p" "%CD%\..\themes_git_tmemp"
mv "%CD%\themes\.git" "%CD%\..\themes_git_tmemp"
git "add" "."
git "commit" "-m" "%~1"
git "push" "origin" "main"
mv "%CD%\..\themes_git_tmemp\.git" "./themes/"
DEL /S "%CD%\..\themes_git_tmemp"