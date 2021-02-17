print('Starting shared script \'MpMinimapRemoveTexture.lua\'...')

ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('09F7EDCB-32FB-412D-8CC7-424440D6B310'), function(instance)

    print('Removing minimap textures...')

    local thisInstance = UILevelDescriptionComponent(instance)
    thisInstance:MakeWritable()
    thisInstance.minimapData.combatAreaColor = Vec4(0,0,0,0)
    thisInstance.minimapData.detailTextureTint = Vec4(0,0,0,0)
    thisInstance.minimapData.fadeTexture = nil
    thisInstance.minimapData.airRadarFadeTexture = nil
    thisInstance.minimapData.detailTexture = nil
    thisInstance.minimapData.combatAreaMultiplyTexture = nil
    thisInstance.minimapData.worldSize = 1.0
    thisInstance.minimapData.useStreamingMinimap = false
    thisInstance.minimapData.useCombatAreaTexture = false

end)