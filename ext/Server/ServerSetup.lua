print('Starting server script \'ServerSetup.lua\'...')

-- Set custom map name
ServerUtils:SetCustomMapName('Thunder Run') -- May want to change this for different maps

-- Set server banner
local banner = RCON:SendCommand('vu.ServerBanner', {'https://i.imgur.com/eiDLOtJ.jpg'}) -- May want to change this for different maps
--print('Custom server banner set: '..tostring(banner))

--[[ Temp disable vehicles
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, round, roundsPerMap)
    vicSpawn = RCON:SendCommand('vars.vehicleSpawnAllowed', {'false'})
    print('Disabled vehicle spawn:')
    print(vicSpawn)
end)]] 