@echo off
@@@Rem This .bat file will open Roblox Studio and begin editing the place with PLACE_ID under the universe UNIVERSE_ID,
@@@Rem at the same time, it will serve Rojo and open VSCode

@Rem -- Roblox place information
set "UNIVERSE_ID=2387642271"
set "PLACE_ID=6417651620"

@Rem -- your Roblox Studio location, I am using a shortcut .lnk
set "STUDIO_LOC=D:\Desktop\Studio.lnk"

@Rem -- your local repository location
set "LOCAL_REPO=D:\Documents\Git\games\RoCitizensHouseBuilder"

@Rem -- start studio
start %STUDIO_LOC% -startEvent www.roblox.com/robloxQTStudioStartedEvent -task EditPlace -universeId %UNIVERSE_ID% -placeId %PLACE_ID%

@Rem -- start VSCode - I am assuming you have "code" in your $PATH variable list, if not Shell Command: Install 'code' command in PATH
start cmd /C code %LOCAL_REPO%

@Rem -- serve Rojo
start powershell.exe -noexit -command "rojo serve %LOCAL_REPO%"