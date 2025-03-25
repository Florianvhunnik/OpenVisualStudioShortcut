set "VS_PATH=C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe"

if not exist "%VS_PATH%" (
    echo Error: Visual Studio executable not found! Please check the path.
    exit /b 1
)

for %%i in ("%cd%\*.sln") do (
    start "" "%VS_PATH%" "%%i"
    goto :eof
)

if not "%~1"=="" (
    start "" "%VS_PATH%" "%~1"
    goto :eof
)

echo Error: No solution file found in the current directory and no argument provided.
exit /b 1
