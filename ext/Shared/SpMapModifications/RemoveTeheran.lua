print('Starting shared script \'RemoveTeheran.lua\'...')

-----------------------------
-- Remove Non-Havok Models --
-----------------------------
-- mp_003_vista

ResourceManager:RegisterInstanceLoadHandler(Guid('F8A44732-4E94-4A0D-A0F5-430636B040A3'), Guid('AE9CFEAF-DD15-4806-B5CE-9F476616A80E'), function(instance) -- Primary instance in HighwayToTeheran_01_LevelArt

    local thisPartition = ResourceManager:FindPartitionForInstance(instance)

    for _, instance in pairs(thisPartition.instances) do

        if instance.instanceGuid == Guid('E8F87F9C-8B89-42FC-A907-C24FD8D40D6B')
        or instance.instanceGuid == Guid('166FFE34-C0E8-4D5F-8881-1CB59AF43055')
        or instance.instanceGuid == Guid('DA88D1DD-6A77-4002-88D7-9AF9C9E2CF8B')
        or instance.instanceGuid == Guid('94B8FFA1-D2F9-496F-B4E0-1107AB305611')
        or instance.instanceGuid == Guid('A7941EE7-77E2-4A6A-9E47-8A5BFD12A841')
        or instance.instanceGuid == Guid('FDA90E8E-3BCF-4C73-A9A5-57494DD4A4ED') then

            --print('Fuck off')
            local thisInstance = ReferenceObjectData(instance)
            thisInstance:MakeWritable()
            thisInstance.excluded = true

        end

    end

end)

-------------------------
-- Remove Havok Models --
-------------------------