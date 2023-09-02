# Vars
$7z = "https://7-zip.org/a/7z2301-x64.exe"
$mingw64 = "https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/8.1.0/threads-win32/seh/x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z"
$mingw_path = "C:\mingw64\bin\"
$vscode = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64"
# Downloads
Start-BitsTransfer -Source $7z -Destination "$env:homepath\Downloads\7z2301-x64.exe"
Start-BitsTransfer -Source $mingw64 -Destination "\mingw64.7z"
# Install
cmd /c start /wait "$env:homepath\Downloads\7z2301-x64.exe" /S
# Extract
cd \
& 'C:\Program Files\7-Zip\7z.exe' x "\mingw64.7z"
# Update Env
Rename-Item -Path "C:\mingw64\bin\mingw32-make.exe" -NewName "make.exe"
$reg_path = 'HKLM:\System\CurrentControlSet\Control\Session Manager\Environment'
$path = Get-ItemProperty -Path $reg_path -Name 'Path'
$path.Path += ';C:\mingw64\bin'
Set-ItemProperty -Path $reg_path -Name 'Path' -Value $path.Path
SystemPropertiesAdvanced.exe
# Cleanup
rm \mingw64.7z
# Install VSCode
Start-BitsTransfer -Source $vscode -Destination "$env:homepath\Downloads\vscode.exe"
cmd /c start /wait "$env:homepath\Downloads\vscode.exe" /S

