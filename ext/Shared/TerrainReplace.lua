---------------------
-- Replace terrain --
---------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('E58409B3-4FAC-452E-8DFF-7D4AE158564B'), function(instance)

    local spLevelTerrainBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('A263A078-CA17-11DF-830F-E4337AA80D37'), Guid('D7763CB1-891C-C169-4CAC-4446316BE7AE'))) -- WorldPartData from the 'default' partition of the SP level (here, line 31295 from Levels/SP_Tank/Default)
    
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelTerrainBp

    --print('SP level terrain loaded.')

end)

-- Misc StaticModelGroupEntityData

Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil or partition.name ~= 'levels/mp_012/mp_012' then
        return
    end

    local spLevelStaticModelGroupEntityData = StaticModelGroupEntityData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('1646385C-670B-43A7-4B35-25076D31409D')))
    partition:AddInstance(spLevelStaticModelGroupEntityData)

    local mpLevelData = LevelData(ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('C973BE9F-14FB-A64D-BA3F-0B07A77F7E95')))
    mpLevelData:MakeWritable()
    mpLevelData.objects:add(spLevelStaticModelGroupEntityData)

end)