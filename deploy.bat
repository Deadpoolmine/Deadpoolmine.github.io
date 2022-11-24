@echo off

if "%~1" == "" (
    echo Usage: deploy.bat "Description of the deployment"
    exit /b 1
)

echo "1> Removing old temp files..."
if exist "%CD%\..\themes_git_tmemp"\ (
  RMDIR /S "%CD%\..\themes_git_tmemp"
)

echo "2> Creating temp files..."
mkdir "%CD%\..\themes_git_tmemp"

echo "3> Backuping git files..."
mv "%CD%\themes\zhaoo\.git" "%CD%\..\themes_git_tmemp"

echo "4> Commiting changes..."
git "add" "."
git "commit" "-m" "%~1"
git "push" "origin" "main"

echo "5> Recoving git files..."
mv "%CD%\..\themes_git_tmemp\.git" "./themes/zhaoo"
RMDIR /S "%CD%\..\themes_git_tmemp"
