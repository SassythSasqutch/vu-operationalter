print('Starting shared script \'MpTerrainAssetRemove.lua\'...')

--------------------------
-- Remove MP_012 assets --
--------------------------

-- Remove generic objects
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('78FB9115-7D40-4526-90CB-83BE0130F468'), function(instance)
    --print('Excluding MP terrain generic objects...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove roads
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('73585BE8-9F88-42D0-8840-6BE6A028F94E'), function(instance)
    --print('Excluding MP terrain roads...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove rocks
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('43ABB376-8677-4B82-8C57-0A0E25B5F3A0'), function(instance)
    --print('Excluding MP terrain rocks...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove vegetation
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('A8FFAB43-1A8A-4E48-A50A-626E9C36995B'), function(instance)
    --print('Excluding MP terrain vegetation...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove effects
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('584D1016-E2B3-4B8B-8118-46A1DC5511BD'), function(instance)
    --print('Excluding MP terrain effects...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove buildings
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('C474B29D-5EDF-4DF4-A7E8-103D1D615F84'), function(instance)
    --print('Excluding MP terrain buildings...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove decals
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('A0FC66F4-9B44-486E-92D7-23F623AE2605'), function(instance)
    --print('Excluding MP terrain decals...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove art temp optimisation
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('5AD1B632-E300-46A4-A054-29CB79CB976B'), function(instance)
    --print('Excluding MP terrain art optimisation...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Disable art temp optimisation schematic
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('F402656E-C6FE-4FBD-8DDF-5F93E41182A7'), function(instance)
    --print('Excluding MP terrain art optimisation schematic...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

-- Disable dynamic Enlighten
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('D5C5E7CA-1720-4E97-A09C-885920838E47'), function(instance)
    --print('Disabling dynamic Enlighten data...')
    local thisInstance = DynamicEnlightenEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enable = false
end)
-- Disable static Enlighten
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('27617DC2-C711-42E8-A1A6-9308F039E4AC'), function(instance)
    --print('Disabling static Enlighten data...')
    local thisInstance = StaticEnlightenEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enable = false
end)
-- Remove object destruction
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('ED845D43-ACAD-4EDF-B2F3-BFDCF9B802A2'), function(instance)
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Remove lighting
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('1478CAB0-6A8A-4BF0-BCF0-B6149FB08EA0'), function(instance)
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)
-- Disable static model group
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('B12FDA41-4397-24FF-3998-DDA05BDFFF30'), function(instance)
    --print('Removing StaticModelGroupEntityData...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
end)
-- Clear static model group member data array
ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('B12FDA41-4397-24FF-3998-DDA05BDFFF30'), function(instance)
    --print('Clearing StaticModelGroupEntityData member data array...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.memberDatas:clear()
end)

------------------
-- Emplacements --
------------------

-- CIWS
ResourceManager:RegisterInstanceLoadHandler(Guid('AA78C8E3-CFB1-46B7-9476-CFA625E97476'), Guid('23D8C664-C706-AE99-05BE-FC39A0C36222'), function(instance)
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil
end)

-- Pantsir
ResourceManager:RegisterInstanceLoadHandler(Guid('AA78C8E3-CFB1-46B7-9476-CFA625E97476'), Guid('56718590-E481-10A5-B5BD-F4A69667970F'), function(instance)
    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil
end)

-- Kornet emplacement
ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('E8D30612-E9A3-4CAB-84C7-100D5714F489'), function(instance)
    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
end)