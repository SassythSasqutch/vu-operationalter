print('Starting shared script \'Remove2dVegetation.lua\'...')

-- Part of terrain. Not possible until we get terrain editing tools.

Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil then
        return
    end

    for _, instance in pairs(partition.instances) do

        if instance:Is('VisualTerrainSettings') or instance:Is('VisualTerrainEntityData') then

            print('HOLY SHIT FOUND '..instance.typeInfo.name..' in partition \''..partition.name..'\'...')

        end

    end

end)