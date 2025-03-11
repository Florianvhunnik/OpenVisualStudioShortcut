# Open Visual Studio with 'vs .'

## 🚀 Overview
Tired of manually opening Visual Studio projects? This guide will help you set up a **'vs .'** command, just like **'code .'** for VS Code, to quickly open your Visual Studio projects from the command line.

## 🎬 Demo
![VS Shortcut in Action](https://github.com/Florianvhunnik/OpenVisualStudioShortcut/blob/main/preview.gif)

## 🔧 Setup Instructions

### **1. Download the Correct File**
To simplify the setup, **download the pre-made batch file** that matches your Visual Studio version:

🔽 **[Download vs-2022.bat](https://github.com/Florianvhunnik/OpenVisualStudioShortcut/raw/main/vs-2022.bat)** *(For Visual Studio 2022)*  
🔽 **[Download vs-2019.bat](https://github.com/Florianvhunnik/OpenVisualStudioShortcut/raw/main/vs-2019.bat)** *(For Visual Studio 2019)*  
🔽 **[Download vs-2017.bat](https://github.com/Florianvhunnik/OpenVisualStudioShortcut/raw/main/vs-2017.bat)** *(For Visual Studio 2017)*  

After downloading, **move the file to `C:\Windows\`** so it can be accessed from anywhere.

### **2. Verify the File Path (Important!)**
If the command **does not work**, the path to `devenv.exe` in the batch file may not match your Visual Studio installation. To check:
1. Open **File Explorer** and navigate to:
   ```plaintext
   C:\Program Files\Microsoft Visual Studio\<your-version>\Community\Common7\IDE\devenv.exe
   ```
2. If the path **does not exist**, check if you installed **Professional or Enterprise**, and adjust the batch file accordingly.
3. You can manually edit the batch file with Notepad to correct the path.

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
- **Using a different Visual Studio edition?** Adjust the executable path in the `.bat` file.
- **Multiple `.sln` files in a folder?** It will open the first one found.
- **File path incorrect?** Follow step 2 to verify the correct installation path.

## 📌 License
Licensed under the ‘Please Don't Sue Me’ License.😆