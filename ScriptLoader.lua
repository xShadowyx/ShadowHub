--[[
         [+] [ Scripting ] -> [ Thunder#7674 on ] -> [ Discord ] [Discord Server Invite] -> [ "https://discord.gg/N7yAy3RSne" ]
]]--

repeat wait() until game:IsLoaded()
local PlaceId = game.PlaceId
if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
    loadstring(game:HttpGet"https://raw.githubusercontent.com/RegularThunder/Protected/main/BF.lua")()
else
    game.Players.LocalPlayer:Kick("Script not Supported!!")
end
