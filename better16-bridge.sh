# version 0.1b
export WINEPREFIX="/home/-YOURNAMME-/.wine"
export STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/-YOURNAMME-/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="/home/-YOURNAMME-/.wine"
export SteamAppId="218620" 

PROTON_PATH="/home/-YOURNAMME-/.local/share/Steam/steamapps/common/Proton 10.0/proton"

cd "/home/-YOURNAMME-/.wine/drive_c/Program Files (x86)/Better16/Versions/version-478697a0a9b946b9/"

"$PROTON_PATH" run RobloxPlayerLauncher.exe "$1"

