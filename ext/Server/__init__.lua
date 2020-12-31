-- Check map being loaded
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    if levelName ~= 'Levels/MP_012/MP_012' or gameMode ~= 'ConquestLarge0' then
        --os.exit()
    end
end)

-- Set custom map name
ServerUtils:SetCustomMapName('Thunder Run') -- May want to change this for different maps

-- Set server banner
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, round, roundsPerMap)
    local banner = RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'}) -- May want to change this for different maps
    --print('Custom server banner set: '..tostring(banner))
end)

-- Temp disable vehicles
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, round, roundsPerMap)
    vicSpawn = RCON:SendCommand('vars.vehicleSpawnAllowed', {'false'})
    print('Disabled vehicle spawn:')
    print(vicSpawn)
    vicDesert = RCON:SendCommand('vu.DesertingAllowed', {'false'})
    print('Disabled vehicle desert:')
    print(vicDesert)
end)