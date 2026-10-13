# Unofficial Better 16 Client for Linux

you can now play better 16 roblox revival on linux using proton and some magic terminal stuff

## How  it works?
the program uses Valves software called Proton and that program makes windows apps run on linux so we can use better16 windows client to run RobloxPlayerLauncher.exe (BootStraper) file and tweaking browser things and done

> [!IMPORTANT]
> The client is still UNSTABLE!! and Work in Progress!! You can expect bugs and glitches.
>
> And make sure you have Proton installed!!



## How to install?

First, get a player bootstarper .exe file from Better 16 Website. 
Link for bootstraper : https://better16.xyz/install/player

And install it using wine in terminal:
```terminal
wine RobloxPlayerLauncher.exe
```
if you dont have wine, install it https://winehq.org/

and wait until the better 16 client installs...

### Download .sh scripts and do terminal stuff

Download better16-bridge.sh from releases.
(https://github.com/Pepca013/Better16-for-Linux-/releases/tag/Client-Scripts/latest)
and open the .sh file and replace -YOURNAME- to your pc username
and put the .sh file to /home/YOURNAME/.local/

or open the terminal and type:
```terminal
nano ~/.local/better16-bridge.sh
```
and paste this:
```bash
# version 0.1b
export WINEPREFIX="/home/-YOURNAMME-/.wine"
export STEAM_COMPAT_CLIENT_INSTALL_PATH="/home/-YOURNAMME-/.local/share/Steam"
export STEAM_COMPAT_DATA_PATH="/home/-YOURNAMME-/.wine"
export SteamAppId="218620" 

PROTON_PATH="/home/-YOURNAMME-/.local/share/Steam/steamapps/common/Proton 10.0/proton"

cd "/home/-YOURNAMME-/.wine/drive_c/Program Files (x86)/Better16/Versions/version-478697a0a9b946b9/"

"$PROTON_PATH" run RobloxPlayerLauncher.exe "$1"
```
REMINDER!!: Change "-YOURNAME-" to your user name! or else it will not work.

and use Ctrl-0, Enter and Ctrl-X to save.

after the bridge is completed, we need to give the permission to run.
Type to terminal: 
```terminal
chmod +x ~/.local/better16-bridge.sh
```
### Now, wee need to make the OS and Browser know, the Better 16 is there
so, open terminal and create a config file 
```terminal
nano ~/.local/share/applications/better16.desktop
```
and paste this: 
```ini
[Desktop Entry]
Name=Better16
Exec=/home/-YOURNAME-/.local/better16-bridge.sh %u
Type=Application
Terminal=false
MimeType=x-scheme-handler/roblox-player;x-scheme-handler/better16;
```
and save (Ctrl-0, Enter and Ctrl-X).

Now the browser thing:
Paste this to terminal:
```bash
xdg-mime default better16.desktop x-scheme-handler/roblox-player
xdg-mime default better16.desktop x-scheme-handler/better16
update-desktop-database ~/.local/share/applications
```
and congrats! now try to play a game in better 16!

Made by Pepca013
