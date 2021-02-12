print('Starting shared script \'SpReferenceDataLoad.lua\'...')

----------------------------------------------------------------
-- Load relevant SP_Tank WorldPart- and SubWorldReferenceData --
----------------------------------------------------------------

-- NOTE: SP levels are often split into different parts for optimisation - you will have to find the names of each of these parts. 
-- They are located in the main path of the level (such as levels/sp_tank), and are usually pretty self-evident. 
-- They are called by the main level partition using SubWorldReferenceObjectData, and need to be set to autoLoad = true

Events:Subscribe('Partition:Loaded', function(partition)

    if partition == nil or partition.name ~= 'levels/mp_012/mp_012' then
        return
    end

    -- The following GUIDs referenced by FindInstanceByGuid are all specific to SP_Tank, and need to be changed as well. 
    -- Under the main partition of the level you want to load, find the SubWorldReferenceObjectData instances which reference the parts of the mission you want to load (visible under the 'Blueprint' parameter).

    -- Backdrop ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    --print('Injecting Backdrop reference data...')
    local spLevelBackdropReferenceData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('6C4089A8-89D4-44E9-B186-7B91E4F68D1E'))) -- To change
    mpLevelBackdropReferenceData = SubWorldReferenceObjectData(spLevelBackdropReferenceData:Clone(Guid('A0000000-0000-0000-0000-000000000000')))
    mpLevelBackdropReferenceData:MakeWritable()
    mpLevelBackdropReferenceData.autoLoad = true
    partition:AddInstance(mpLevelBackdropReferenceData)

    -- Add to LevelData objects array
    local mpLevelData = LevelData(ResourceManager:FindInstanceByGuid(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('C973BE9F-14FB-A64D-BA3F-0B07A77F7E95')))
    mpLevelData:MakeWritable()
    mpLevelData.objects:add(mpLevelBackdropReferenceData)

    -- Desert Intro -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Desert Intro reference data...')
    local spLevelDesertIntroReferenceData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('52722481-2181-438D-9334-A0ECB91FF805'))) -- To change
    mpLevelDesertIntroReferenceData = SubWorldReferenceObjectData(spLevelDesertIntroReferenceData:Clone(Guid('B0000000-0000-0000-0000-000000000000')))
    mpLevelDesertIntroReferenceData:MakeWritable()
    mpLevelDesertIntroReferenceData.autoLoad = true
    partition:AddInstance(mpLevelDesertIntroReferenceData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelDesertIntroReferenceData)

    -- Desert Fort ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Desert Fort reference data...')
    local spLevelDesertFortReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('B59F8CC1-43B3-4A98-81AA-128B5368B967'))) -- To change
    mpLevelDesertFortReferenceObjectData = SubWorldReferenceObjectData(spLevelDesertFortReferenceObjectData:Clone(Guid('C0000000-0000-0000-0000-000000000000')))
    mpLevelDesertFortReferenceObjectData:MakeWritable()
    mpLevelDesertFortReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelDesertFortReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelDesertFortReferenceObjectData)

    -- Road to Desert ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    --print('Injecting Road to Desert reference data...')
    local spLevelRoadToDesertReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('D8A6501F-2F44-49F4-A4C5-6F6B25666044'))) -- To change
    mpLevelRoadToDesertReferenceObjectData = SubWorldReferenceObjectData(spLevelRoadToDesertReferenceObjectData:Clone(Guid('D000000-0000-0000-0000-000000000000')))
    mpLevelRoadToDesertReferenceObjectData:MakeWritable()
    mpLevelRoadToDesertReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelRoadToDesertReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelRoadToDesertReferenceObjectData)

    -- Highway of Death -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting first Highway of Death reference data...')
    local spLevelHighwayOfDeath1ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('E4D145BB-8363-4476-ADAD-E777C223001A'))) -- To change
    mpLevelHighwayOfDeath1ReferenceObjectData = SubWorldReferenceObjectData(spLevelHighwayOfDeath1ReferenceObjectData:Clone(Guid('E0000000-0000-0000-0000-000000000000')))
    mpLevelHighwayOfDeath1ReferenceObjectData:MakeWritable()
    mpLevelHighwayOfDeath1ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelHighwayOfDeath1ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelHighwayOfDeath1ReferenceObjectData)

    -- Highway of Death 2 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting second Highway of Death reference data...')
    local spLevelHighwayOfDeath2ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('1F455D6F-9181-4D5B-952F-4C64113A1F10'))) -- To change
    mpLevelHighwayOfDeath2ReferenceObjectData = SubWorldReferenceObjectData(spLevelHighwayOfDeath2ReferenceObjectData:Clone(Guid('F0000000-0000-0000-0000-000000000000')))
    mpLevelHighwayOfDeath2ReferenceObjectData:MakeWritable()
    mpLevelHighwayOfDeath2ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelHighwayOfDeath2ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelHighwayOfDeath2ReferenceObjectData)

    -- MICLIC -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting MICLIC reference data...') -- Some partitions, like this one referring to the USMC mine clearing technology used in the scene, are a little less obviously one of the parts of the mission.
    local spLevelMiclicReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('608959C0-8339-49F9-BF12-60AC8F7ABD75'))) -- To change
    mpLevelMiclicReferenceObjectData = SubWorldReferenceObjectData(spLevelMiclicReferenceObjectData:Clone(Guid('G0000000-0000-0000-0000-000000000000')))
    mpLevelMiclicReferenceObjectData:MakeWritable()
    mpLevelMiclicReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelMiclicReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelMiclicReferenceObjectData)

    -- MICLIC Art -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting MICLIC Art reference data...')
    local spLevelMiclicArtReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('CE7F0083-AF66-49B5-80ED-6B687828C02C'))) -- To change
    mpLevelMiclicArtReferenceObjectData = SubWorldReferenceObjectData(spLevelMiclicArtReferenceObjectData:Clone(Guid('H0000000-0000-0000-0000-000000000000')))
    mpLevelMiclicArtReferenceObjectData:MakeWritable()
    mpLevelMiclicArtReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelMiclicArtReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelMiclicArtReferenceObjectData)

    -- MICLIC - Highway to Teheran --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting MICLIC - Highway to Teheran reference data...')
    local spLevelMiclicHighwayReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('5151F1C7-D43D-4F0A-A2FB-680A2E41880E'))) -- To change
    mpLevelMiclicHighwayReferenceObjectData = SubWorldReferenceObjectData(spLevelMiclicHighwayReferenceObjectData:Clone(Guid('I0000000-0000-0000-0000-000000000000')))
    mpLevelMiclicHighwayReferenceObjectData:MakeWritable()
    mpLevelMiclicHighwayReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelMiclicHighwayReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelMiclicHighwayReferenceObjectData)

    -- Highway to Teheran 1 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting first Highway to Teheran reference data...')
    local spLevelHighway1ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('71844763-F933-4200-A03B-9B7385F94A1A'))) -- To change
    mpLevelHighway1ReferenceObjectData = SubWorldReferenceObjectData(spLevelHighway1ReferenceObjectData:Clone(Guid('J0000000-0000-0000-0000-000000000000')))
    mpLevelHighway1ReferenceObjectData:MakeWritable()
    mpLevelHighway1ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelHighway1ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelHighway1ReferenceObjectData)

    -- Highway to Teheran 2 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting second Highway to Teheran reference data...')
    local spLevelHighway2ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('E2845049-2ADA-4E28-A4AE-26C8E4D55D2B'))) -- To change
    mpLevelHighway2ReferenceObjectData = SubWorldReferenceObjectData(spLevelHighway2ReferenceObjectData:Clone(Guid('K0000000-0000-0000-0000-000000000000')))
    mpLevelHighway2ReferenceObjectData:MakeWritable()
    mpLevelHighway2ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelHighway2ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelHighway2ReferenceObjectData)

    -- Highway Overpass -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Highway Overpass reference data...')
    local spLevelOverpassReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('46C9A9C5-61B2-484D-B9A1-C56D70682F06'))) -- To change
    mpLevelOverpassReferenceObjectData = SubWorldReferenceObjectData(spLevelOverpassReferenceObjectData:Clone(Guid('L0000000-0000-0000-0000-000000000000')))
    mpLevelOverpassReferenceObjectData:MakeWritable()
    mpLevelOverpassReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelOverpassReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelOverpassReferenceObjectData)

    -- Drive to Bank Plaza 1 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Drive to Bank Plaza 1 reference data...')
    --[[local spLevelDrive1ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('E325304E-551E-4041-ADE1-D9334982209B')))
    mpLevelDrive1ReferenceObjectData = SubWorldReferenceObjectData(spLevelDrive1ReferenceObjectData:Clone(Guid('M0000000-0000-0000-0000-000000000000')))
    mpLevelDrive1ReferenceObjectData:MakeWritable()
    mpLevelDrive1ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelDrive1ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelDrive1ReferenceObjectData)

    -- Drive to Bank Plaza 2 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Drive to Bank Plaza 2 reference data...')
    local spLevelDrive2ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('24EBE225-12E9-4057-A672-9A9B80D77DE6')))
    mpLevelDrive2ReferenceObjectData = SubWorldReferenceObjectData(spLevelDrive2ReferenceObjectData:Clone(Guid('N0000000-0000-0000-0000-000000000000')))
    mpLevelDrive2ReferenceObjectData:MakeWritable()
    mpLevelDrive2ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelDrive2ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelDrive2ReferenceObjectData)

    -- Drive to Bank Plaza 3 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Drive to Bank Plaza 3 reference data...')
    local spLevelDrive3ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('B77D72A4-AF5D-4BF0-9717-F3FCE5F160CB')))
    mpLevelDrive3ReferenceObjectData = SubWorldReferenceObjectData(spLevelDrive3ReferenceObjectData:Clone(Guid('O0000000-0000-0000-0000-000000000000')))
    mpLevelDrive3ReferenceObjectData:MakeWritable()
    mpLevelDrive3ReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelDrive3ReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelDrive3ReferenceObjectData)

    -- Bank Plaza -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    --print('Injecting Bank Plaza reference data...')
    local spLevelBankReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('0EC1D113-6E58-465D-A716-3B76519D621E')))
    mpLevelBankReferenceObjectData = SubWorldReferenceObjectData(spLevelBankReferenceObjectData:Clone(Guid('P0000000-0000-0000-0000-000000000000')))
    mpLevelBankReferenceObjectData:MakeWritable()
    mpLevelBankReferenceObjectData.autoLoad = true
    partition:AddInstance(mpLevelBankReferenceObjectData)

    -- Add to LevelData objects array
    mpLevelData.objects:add(mpLevelBankReferenceObjectData)]]

end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    --print('Adding new registry containing relevant SubWorldReferenceData...')
    local newRegistry = RegistryContainer()
    newRegistry.referenceObjectRegistry:add(mpLevelBackdropReferenceData) -- Backdrop
    newRegistry.referenceObjectRegistry:add(mpLevelDesertIntroReferenceData) -- Desert Intro
    newRegistry.referenceObjectRegistry:add(mpLevelDesertFortReferenceObjectData) -- Desert Fort
    newRegistry.referenceObjectRegistry:add(mpLevelRoadToDesertReferenceObjectData) -- Road to Desert
    newRegistry.referenceObjectRegistry:add(mpLevelHighwayOfDeath1ReferenceObjectData) -- Highway of Death 1
    newRegistry.referenceObjectRegistry:add(mpLevelHighwayOfDeath2ReferenceObjectData) -- Highway of Death 2
    newRegistry.referenceObjectRegistry:add(mpLevelMiclicReferenceObjectData) -- MICLIC
    newRegistry.referenceObjectRegistry:add(mpLevelMiclicArtReferenceObjectData) -- MICLIC Art
    newRegistry.referenceObjectRegistry:add(mpLevelMiclicHighwayReferenceObjectData) -- MICLIC - Highway to Teheran
    newRegistry.referenceObjectRegistry:add(mpLevelHighway1ReferenceObjectData) -- Highway to Teheran 1
    newRegistry.referenceObjectRegistry:add(mpLevelHighway2ReferenceObjectData) -- Highway to Teheran 2
    newRegistry.referenceObjectRegistry:add(mpLevelOverpassReferenceObjectData) -- Highway Overpass
    newRegistry.referenceObjectRegistry:add(mpLevelDrive1ReferenceObjectData)
    newRegistry.referenceObjectRegistry:add(mpLevelDrive2ReferenceObjectData)
    newRegistry.referenceObjectRegistry:add(mpLevelDrive3ReferenceObjectData)
    newRegistry.referenceObjectRegistry:add(mpLevelBankReferenceObjectData)
    ResourceManager:AddRegistry(newRegistry, ResourceCompartment.ResourceCompartment_Game)

end)