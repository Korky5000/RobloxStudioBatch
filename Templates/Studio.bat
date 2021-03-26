@echo off
@@@Rem This simple .bat file will open Roblox Studio and begin editing the place with PLACE_ID under the universe UNIVERSE_ID

@Rem -- Roblox place information
set "UNIVERSE_ID=2387642271"
set "PLACE_ID=6417651620"

@Rem -- your Roblox Studio location, I am using a shortcut .lnk
set "STUDIO_LOC=D:\Desktop\Studio.lnk"

@Rem -- start studio
start %STUDIO_LOC% -startEvent www.roblox.com/robloxQTStudioStartedEvent -task EditPlace -universeId %UNIVERSE_ID% -placeId %PLACE_ID%