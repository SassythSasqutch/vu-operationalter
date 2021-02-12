print('Starting shared script \'SkyboxReplace.lua\'...')

--------------------
-- Replace skybox --
--------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('B920AF18-0452-4F3A-8943-643BCA723585'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('12BEAA92-AD04-4DCC-8B11-FDB2565C36FE'), Guid('43E50F71-AAA5-4FE3-B185-BAB37DA9EF6C'))) -- VisualEnvironmentBlueprint from the sp_tank/lighting/ve_sp_tank_desert01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SP level sky loaded.')

end) -- Maybe keep the Firestorm skybox for some maps (SP one looks janky at altitude)