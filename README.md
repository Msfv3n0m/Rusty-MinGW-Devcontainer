# Rusty-MinGW-Devcontainer
This project just opens a message box. The code found in this project is from Microsoft's documentation on the MessageBox win32 api [here](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox) 
## Devcontainer
### Build and Distribute
1. Run `cargo build --release --target x86_64-pc-windows-gnu` </br>
2. Export the exe by running `python3 -m http.server` and opening the web page in a browser
### Run (if not using windows crates)
1. Run `cargo run` to execute the program in the devcontainer