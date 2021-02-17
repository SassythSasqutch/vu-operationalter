-- FX_Smoke_Thin EffectEntityData

print('Starting shared script \'RemoveGreenSmoke.lua\'...')

-------------------------
-- 'Default' WorldPart --
-------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('A263A078-CA17-11DF-830F-E4337AA80D37'), Guid('7668D8CB-128B-4216-86BD-40D51721E426'), function(instance) -- EffectReferenceObjectData

    local thisInstance = EffectReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('A263A078-CA17-11DF-830F-E4337AA80D37'), Guid('A229A62D-72B2-4687-A026-7B39C0E4D6BC'), function(instance) -- EffectReferenceObjectData

    local thisInstance = EffectReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true

end)

-------------------------------------------
-- Highway of Death 2 LevelArt WorldPart --
-------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('268F8B46-99D3-45D0-9CFE-89F2797D4838'), Guid('B62FFF5E-069F-4FC4-BAF9-73D3F998A4B7'), function(instance) -- EffectReferenceObjectData

    local thisInstance = EffectReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('268F8B46-99D3-45D0-9CFE-89F2797D4838'), Guid('6F57EA68-3202-4162-A632-3E04D11287D0'), function(instance) -- EffectReferenceObjectData

    local thisInstance = EffectReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true

end)

---------------------------------------------
-- Highway to Teheran 1 LevelArt WorldPart --
---------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('F8A44732-4E94-4A0D-A0F5-430636B040A3'), Guid('AE9CFEAF-DD15-4806-B5CE-9F476616A80E'), function(instance) -- Primary instance
    local thisPartition = ResourceManager:FindPartitionForInstance(instance)
    for _, instance in pairs(thisPartition.instances) do
        if instance:Is('EffectReferenceObjectData') then
            local thisInstance = EffectReferenceObjectData(instance)
            if string.find(thisInstance.blueprint.name, 'FX_Smoke_Thin') then
                thisInstance:MakeWritable()
                thisInstance.excluded = true
            end
        end
    end
end)

-------------------------------
-- MICLIC LevelArt WorldPart --
-------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('84A4B7A9-2337-4886-9923-5A153A5DF760'), Guid('CF5123F9-972D-4B60-B5BA-D043195686D9'), function(instance) -- Primary instance
    local thisPartition = ResourceManager:FindPartitionForInstance(instance)
    for _, instance in pairs(thisPartition.instances) do
        if instance:Is('EffectReferenceObjectData') then
            local thisInstance = EffectReferenceObjectData(instance)
            if string.find(thisInstance.blueprint.name, 'FX_Smoke_Thin') then
                thisInstance:MakeWritable()
                thisInstance.excluded = true
            end
        end
    end
end)