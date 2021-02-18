print('Starting shared script \'RemoveInvisibleWalls.lua\'...')

----------------------------------------------
-- Make havok invisible walls blueprint nil --
----------------------------------------------

--InvisibleCollision_01 ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('A75DADE9-BDC6-11E0-A4AD-D5BD8D209D9C'), Guid('B31F6765-43B1-48FD-CB4A-08718A249877'), function(instance)
    print('Making InvisibleCollision_01 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)

-- InvisibleCollision_02 Block 40m ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('21F3012E-C9A6-11E0-928D-951B45190C6C'), Guid('07DDE615-65E7-3B2B-D343-7320BACDAC89'), function(instance)
    print('Making InvisibleCollision_02 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)

-- InvisibleCollision_02 Sphere 20m ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('4B03F97D-C9A6-11E0-928D-951B45190C6C'), Guid('041DAF13-822A-DE3C-7738-EB9D560DA065'), function(instance)
    print('Making InvisibleCollision_02 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)


-- InvisibleCollision_02 Block 20m ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('1034FDAD-C9A4-11E0-928D-951B45190C6C'), Guid('7E353E33-A44D-D000-E7B4-D260505B2085'), function(instance)
    print('Making InvisibleCollision_02 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)

-- InvisibleCollision_02 Sphere 8m ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('25D585AE-C9A7-11E0-928D-951B45190C6C'), Guid('149B3F41-755B-F70E-CB5A-01D5A6A24F8D'), function(instance)
    print('Making InvisibleCollision_02 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)

-- InvisibleCollision_02 Block 10m ObjectBlueprint
ResourceManager:RegisterInstanceLoadHandler(Guid('D4650FCE-C9A5-11E0-928D-951B45190C6C'), Guid('2148FFAE-9684-8E14-F04D-7035F6C9C886'), function(instance)
    print('Making InvisibleCollision_02 object nil...')
    local thisInstance = ObjectBlueprint(instance)
    thisInstance:MakeWritable()
    thisInstance.object = nil
end)

-- One remaining between (-884.27, 902.24) and (-886.23, 1180.99) between A and B flags (HighwayOfDeath.ebx)

-- Temp fix: nuke HighwayOfDeath StaticGroupModelEntityData
ResourceManager:RegisterInstanceLoadHandler(Guid('C6FEE734-0FBC-475A-8773-16CEE51596D0'), Guid('25E9C356-A21B-BB2E-F960-794BB98DE259'), function(instance)

    print('Nuking HighwayofDeath StaticGroupModelEntityData...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.enabled = false
    thisInstance.memberDatas:clear()

end)