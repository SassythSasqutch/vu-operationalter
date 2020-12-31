-- Check map being loaded
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    if levelName ~= 'Levels/MP_012/MP_012' then
        return
    end
end)

-- Set custom map name
ServerUtils:SetCustomMapName('Operation Alter') -- May want to change this for different maps

-- Set server banner
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, round, roundsPerMap)
    local banner = RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'}) -- May want to change this for different maps
    print(banner)
end)

-----------------------
-- Map modifications --
-----------------------

-- Setting objective names