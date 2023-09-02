# MinGW-Devcontainer
This project just opens a message box. The code found in this project is from Microsoft's documentation on the MessageBox win32 api [here](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox) 
## Codespaces/Devcontainer
Just run `make`! </br>
You can export the exe by running `python3 -m http.server` and opening the web page in a browser
## Linux
```
sudo apt install mingw-w64 -y && \
sudo apt install make -y
```
Then just run `make`!
## Windows
1. Run setup.ps1 or setup.bat with admin privs
2. When the popup box shows up, click Environment Variables
3. Click Okay (This updates the path environment variable)
4. Click Okay
5. Just run `make`! </br>
#### OR
1. Download [mingw64](https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-win32/seh/x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z)
2. Download and install [7zip](https://www.7-zip.org/a/7z2301-x64.exe)
3. Select Extract Here
4. Add `C:\mingw64\bin` to the system's PATH environment variable
5. Rename `mingw32-make.exe` to `make.exe`
6. Just run `make`! 
## VSCode 
1. Install [VSCode](https://code.visualstudio.com/download)
2. Get the `ms-vscode.cpptools` extension for intellisense and debugging
