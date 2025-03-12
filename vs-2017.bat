@echo off
set "VS_PATH=C:\Program Files\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"

if not exist "%VS_PATH%" (
    echo Error: Visual Studio executable not found! Please check the path.
    exit /b 1
)

for %%i in ("%cd%\*.sln") do (
    start "" "%VS_PATH%" "%%i"
    exit
)

start "" "%VS_PATH%" %1