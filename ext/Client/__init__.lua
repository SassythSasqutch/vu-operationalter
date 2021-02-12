-- Check map being loaded
Events:Subscribe('Level:LoadResources', function()

    if SharedUtils:GetLevelName() ~= 'Levels/MP_012/MP_012' or SharedUtils:GetCurrentGameMode() ~= 'ConquestLarge0' then
        return
    else
        require('ClientSetup')
    end

end)

require('ForceSkipRoundCommand_Client')