print('Starting shared script \'SpLogicExclude.lua\'...')

----------------------
-- Exclude SP logic --
----------------------

Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil 
    or (partition.name ~= 'levels/sp_tank/desertintro' -- To change
    and partition.name ~= 'levels/sp_tank/desertfort' -- To change
    and partition.name ~= 'levels/sp_tank/roadtodesert_01' -- To change
    and partition.name ~= 'levels/sp_tank/highwayofdeath' -- To change
    and partition.name ~= 'levels/sp_tank/highwayofdeath2' -- To change
    and partition.name ~= 'levels/sp_tank/miclic' -- To change
    and partition.name ~= 'levels/sp_tank/miclic-highwaytoteheran' -- To change
    and partition.name ~= 'levels/sp_tank/highwaytoteheran_01' -- To change
    and partition.name ~= 'levels/sp_tank/highwaytoteheran_02' -- To change
    and partition.name ~= 'levels/sp_tank/highwayoverpass_01') -- To change
    then
        return
    end

    --print('Found SP partition to modify.')

    local loadedInstances = partition.instances

    for _, instance in pairs(loadedInstances) do

        if instance:Is('WorldPartReferenceObjectData') then

            local thisInstance = WorldPartReferenceObjectData(instance)

            --print('Found WorldPartReferenceObjectData.')

            if thisInstance.instanceGuid ~= Guid('2DADBEA7-CE53-4DCC-918E-92D599601D4D') -- Desert Intro LevelArt 
            and thisInstance.instanceGuid ~= Guid('7BBC29BE-3008-4B7C-B073-1798258A5258') -- Desert Fort LevelArt
            and thisInstance.instanceGuid ~= Guid('44AAC126-318B-426B-96FD-3CA6C8BE5D82') -- Road to Desert LevelArt
            and thisInstance.instanceGuid ~= Guid('DFF9F0E4-CC66-4C84-B032-FC3B2E122EF0') -- Highway of Death 1 LevelArt
            and thisInstance.instanceGuid ~= Guid('FCCDE338-8476-4C49-8F5D-C846E321E87F') -- MICLIC-Highway to Teheran LevelArt
            and thisInstance.instanceGuid ~= Guid('FF1E141A-D019-4A7D-ABC5-0E229B2859F3') -- Highway to Teheran 1 LevelArt
            and thisInstance.instanceGuid ~= Guid('C21F4205-887C-43CC-8DA6-2118D88576C0') -- Highway to Teheran 1 Propsketching
            and thisInstance.instanceGuid ~= Guid('46CEA362-BF22-4B7E-A2EA-5A23F77D7677') -- Highway to Teheran 2 LevelArt
            and thisInstance.instanceGuid ~= Guid('B04E3558-79CD-496D-85D0-25B521EF185C') -- Highway Overpass LevelArt
            and thisInstance.instanceGuid ~= Guid('88719C9A-BA7C-43C6-876E-62FDD66478E4') -- Highway Overpass Substream
            then
                if thisInstance.blueprint.name == '' then
                    --print('Excluding instance calling unknown blueprint.')
                else
                    --print('Excluding instance calling '..thisInstance.blueprint.name)
                end
                thisInstance:MakeWritable()
                thisInstance.excluded = true
            end

        end

    end

end)