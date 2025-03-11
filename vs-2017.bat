@echo off
for %%i in ("%cd%\*.sln") do (
    "C:\Program Files\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe" "%%i"
    exit
)
"C:\Program Files\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe" %1