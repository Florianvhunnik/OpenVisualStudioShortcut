# Open Visual Studio with 'vs .'

## 🚀 Overview
Tired of manually opening Visual Studio projects? This guide will help you set up a **'vs .'** command, just like **'code .'** for VS Code, to quickly open your Visual Studio projects from the command line.

## 🎬 Demo
![VS Shortcut in Action](https://github.com/Florianvhunnik/OpenVisualStudioShortcut/preview.gif)

## 🔧 Setup Instructions

### **1. Find Visual Studio Executable Path**
Depending on your edition of Visual Studio, the executable (`devenv.exe`) is located at:

- **Visual Studio 2022 (Community)**  
  ```plaintext
  C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe
  ```
- **For Professional or Enterprise**, replace `Community` with `Professional` or `Enterprise`.

### **2. Create a Batch File (vs.bat)**
Open **PowerShell as Administrator** and run the following command:

```powershell
New-Item -Path "C:\Windows\vs.bat" -ItemType File -Value '@echo off
for %%i in ("%cd%\*.sln") do (
    "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe" "%%i"
    exit
)

"C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe" %1'
'
```

### **3. Test the Command**
1. Open **Command Prompt (`cmd.exe`)** or **PowerShell**.
2. Navigate to a folder with a Visual Studio solution (`.sln` file):
   ```cmd
   cd C:\path\to\your\project
   ```
3. Run:
   ```cmd
   vs .
   ```
   - If a **`.sln` file** is found, it will open in Visual Studio.
   - If no `.sln` file is found, Visual Studio will open the folder.

## 🎯 Benefits
✔️ Faster project access  
✔️ Works exactly like `code .` for VS Code  
✔️ No need to manually search for `.sln` files  

## 🛠️ Troubleshooting
- **Command not recognized?** Restart the terminal or your PC.
- **Using a different Visual Studio edition?** Adjust the executable path in `vs.bat`.
- **Multiple `.sln` files in a folder?** It will open the first one found.

## 📌 License
Licensed under the ‘Please Don't Sue Me’ License.😆
