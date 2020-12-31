-- Janssent is to thank for the idea behind this - loading an MP map and adding the SP terrain, instead of loading an SP map and adding the MP logic (because, seriously, fuck that second approach)

spMap = 'sp_tank' -- The SP map to load - there are also some GUIDs for directories and terrain data to change when converting this to other maps. Where this has to be done, there is a comment at the end of the line.

-- Check map being loaded
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    if levelName ~= 'Levels/MP_012/MP_012' then
        print('Server is not loading Operation Firestorm MP_012 - closing...')
        return
    else
        print('Operation Firestorm MP_012 being loaded - loading '..spMap)
    end
end)
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

--------------------------
-- Prepare SP_Tank data --
--------------------------

Events:Subscribe('Level:LoadResources', function()

    print('Mounting SP Chunks...')
    ResourceManager:MountSuperBundle('spchunks')
    print('Mounting SP level...')
    ResourceManager:MountSuperBundle('levels/'..spMap..'/'..spMap)

end)

Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
        print('Injecting bundles...')

        bundles = {
            'levels/'..spMap..'/'..spMap,
            'levels/sp_tank/backdrop', -- Following are specific to sp_tank (see Powback's list of bundles on his VU-Wiki github repo)
            'levels/sp_tank/desertfort', -- To change
            'levels/sp_tank/desertfortpconly', -- To change
            'levels/sp_tank/desertfortsmallobjects_01_levelart', -- To change
            'levels/sp_tank/desertintro', -- To change
            'levels/sp_tank/highwayofdeath', -- To change
            'levels/sp_tank/highwayofdeath2', -- To change
            'levels/sp_tank/highwayoverpass_01', -- To change
            'levels/sp_tank/highwayoverpass_01_levelart_substream_01', -- To change
            'levels/sp_tank/highwaytoteheran_01', -- To change
            'levels/sp_tank/highwaytoteheran_02', -- To change
            'levels/sp_tank/miclic-highwaytoteheran', -- To change
            'levels/sp_tank/miclic', -- To change
            'levels/sp_tank/miclicart', -- To change
            'levels/sp_tank/roadtodesert_01', -- To change
			bundles[1],
        }

        hook:Pass(bundles, compartment)
    end

end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    -- Main
    print('Adding SP level registry...')
    local spLevelMainRegistry = ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('67F82662-BE3A-5161-E910-DACF2075AB01')) -- Get the RegistryContainer from the main level partition (here, line 6952 of Levels/SP_Tank/SP_Tank)
    ResourceManager:AddRegistry(spLevelMainRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Backdrop
    local spLevelBackdropRegistry = ResourceManager:FindInstanceByGuid(Guid('C6E3D0AE-52B7-4DE7-9996-A86F34311CD4'), Guid('4C3B6ADF-8920-4ED1-FB91-70295C1349C7')) -- Get the RegistryContainer for the backdrop partition
    ResourceManager:AddRegistry(spLevelBackdropRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Desert Intro
    local spLevelDesertIntroRegistry = ResourceManager:FindInstanceByGuid(Guid('0F491108-2F72-47CB-8337-6AFBEB459AE6'), Guid('BC490CCF-DE08-02FF-FB10-41D9A1367CBE')) -- Get the RegistryContainer for the Desert Intro partition
    ResourceManager:AddRegistry(spLevelDesertIntroRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Desert Fort
    local spLevelDesertFortRegistry = ResourceManager:FindInstanceByGuid(Guid('44234CB8-700B-461D-AF51-4FD9555128A7'), Guid('4C200C23-43D4-27E3-AC17-EBA1030EE457')) -- Get the RegistryContainer for the Desert Fort partition
    ResourceManager:AddRegistry(spLevelDesertFortRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Road to Desert 1
    local spLevelRoadToDesertRegistry = ResourceManager:FindInstanceByGuid(Guid('695D87A7-C6D5-48E8-BB58-76E8B33EE739'), Guid('DA6CEDC4-01F7-D27B-6CC1-2B97E5F3AB23')) -- Get the RegistryContainer for the Road to Desert partition
    ResourceManager:AddRegistry(spLevelRoadToDesertRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Highway of Death 1
    local spLevelHighwayOfDeath1Registry = ResourceManager:FindInstanceByGuid(Guid('C6FEE734-0FBC-475A-8773-16CEE51596D0'), Guid('BC8DC981-4625-2355-04E5-B326F548D0E6')) -- Get the RegistryContainer for the first Highway of Death partition
    ResourceManager:AddRegistry(spLevelHighwayOfDeath1Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Highway of Death 2
    local spLevelHighwayOfDeath2Registry = ResourceManager:FindInstanceByGuid(Guid('B2CC7F28-F5E8-43D1-B6CE-7384EA7E2EB1'), Guid('7DB4EA02-57ED-CA63-614D-CEECEB11D4AB')) -- Get the RegistryContainer for the second Highway of Death partition
    ResourceManager:AddRegistry(spLevelHighwayOfDeath2Registry, ResourceCompartment.ResourceCompartment_Game)

    -- MICLIC
    local spLevelMiclicRegistry = ResourceManager:FindInstanceByGuid(Guid('12045EDE-2A4E-41ED-AEA1-5643CF1BF1B2'), Guid('4FC725F5-4B1B-ECE4-21FF-D05FB4FFAC87')) -- Get the RegistryContainer for the MICLIC partition
    ResourceManager:AddRegistry(spLevelMiclicRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- MICLIC Art
    local spLevelMiclicArtRegistry = ResourceManager:FindInstanceByGuid(Guid('D1573748-690C-44F0-B593-3AAA1A53F3EC'), Guid('8214CD06-B994-1696-65C3-EA8442686DA5')) -- Get the RegistryContainer for the MICLIC art partition
    ResourceManager:AddRegistry(spLevelMiclicArtRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- MICLIC - Highway to Teheran
    local spLevelMiclicHighwayRegistry = ResourceManager:FindInstanceByGuid(Guid('43B5EA51-153F-4314-BE3C-E10355CB340C'), Guid('F81E4AF3-E614-1CC1-1875-7AAA7EFD5354')) -- Get the RegistryContainer for the MICLIC - Highway to Teheran partition
    ResourceManager:AddRegistry(spLevelMiclicHighwayRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Highway to Teheran 1
    local spLevelHighway1Registry = ResourceManager:FindInstanceByGuid(Guid('2E9745C5-A3FB-4233-94BD-C10A2E310742'), Guid('A79DA040-87B2-4070-F611-89CF52DFB62C')) -- Get the RegistryContainer for the first Highway to Teheran partition
    ResourceManager:AddRegistry(spLevelHighway1Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Highway to Teheran 2
    local spLevelHighway2Registry = ResourceManager:FindInstanceByGuid(Guid('067A80BA-0A19-40E1-9819-50CEF742387A'), Guid('EF50CD8A-A5E7-40A2-0673-B1D8D23AC5F2')) -- Get the RegistryContainer for the second Highway to Teheran partition
    ResourceManager:AddRegistry(spLevelHighway2Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Highway Overpass
    local spLevelOverpassRegistry = ResourceManager:FindInstanceByGuid(Guid('8709713A-D295-4774-A81C-5339CB593165'), Guid('A0940976-5CE9-AC53-8EAC-F31DBAF941A7')) -- Get the RegistryContainer for the Highway Overpass partition
    ResourceManager:AddRegistry(spLevelOverpassRegistry, ResourceCompartment.ResourceCompartment_Game)

    -- Drive to Bank 1
    local spLevelDrive1Registry = ResourceManager:FindInstanceByGuid(Guid('85F2A766-9083-4F0F-A11D-CEE62AF439FE'), Guid('A89EEE65-BA0D-4F3F-DD63-1C219A8A0F4E'))
    ResourceManager:AddRegistry(spLevelDrive1Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Drive to Bank 2 
    local spLevelDrive2Registry = ResourceManager:FindInstanceByGuid(Guid('1856E950-1702-4188-8B0F-A6C873A3B4BC'), Guid('96EFA3A7-9D0B-915E-9692-9EAA7C184CB4'))
    ResourceManager:AddRegistry(spLevelDrive2Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Drive to Bank 3
    local spLevelDrive3Registry = ResourceManager:FindInstanceByGuid(Guid('825D5256-4FA4-4468-9219-286E6A262D94'), Guid('B907E3FE-47C4-FEB3-D808-08927F13B51A'))
    ResourceManager:AddRegistry(spLevelDrive3Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Bank Plaza
    local spLevelBankRegistry = ResourceManager:FindInstanceByGuid(Guid('C6B7EE89-A89E-4E9B-9D8E-9487ED2C76E7'), Guid('7B073BA8-6A43-F742-E63D-E164A1D29A63'))
    ResourceManager:AddRegistry(spLevelBankRegistry, ResourceCompartment.ResourceCompartment_Game)

end)

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

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Block Operation Firestorm terrain (many thanks to Ry and FoolHen - seriously, I'd probably spent 20 hours trying to fix an issue related to not having this before I asked them) --
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Hooks:Install('Terrain:Load', 100, function(hook, terrainName)

    --print('Loading terrain \''..terrainName..'\'')

    if terrainName == 'levels/mp_012/terrain/mp_012.streamingtree' then
        --print('Blocking terrain \''..terrainName..'\'.')
        hook:Return()
    end

end)

Hooks:Install('VisualTerrain:Load', 100, function(hook, terrainName) 

    --print('Loading vis terrain \''..terrainName..'\'.')
    
    if terrainName == 'levels/mp_012/terrain/mp_012.visual' then
        --print('Blocking visual terrain \''..terrainName..'\'.')
        hook:Return()
    end

end)

--------------------
-- Replace skybox --
--------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('8BB2506F-493A-11DF-B052-CC4B5D6E8131'), Guid('B920AF18-0452-4F3A-8943-643BCA723585'), function(instance)

    local spLevelSkyBp = Blueprint(ResourceManager:FindInstanceByGuid(Guid('12BEAA92-AD04-4DCC-8B11-FDB2565C36FE'), Guid('43E50F71-AAA5-4FE3-B185-BAB37DA9EF6C'))) -- VisualEnvironmentBlueprint from the sp_tank/lighting/ve_sp_tank_desert01 partition for the skybox

    local thisInstance = VisualEnvironmentReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = spLevelSkyBp

    --print('SP level sky loaded.')

end) -- Maybe keep the Firestorm skybox for some maps (looks janky at altitude)

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
    local spLevelDrive1ReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('A263A077-CA17-11DF-830F-E4337AA80D37'), Guid('E325304E-551E-4041-ADE1-D9334982209B')))
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
    mpLevelData.objects:add(mpLevelBankReferenceObjectData)

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

    for _, instance in ipairs(loadedInstances) do

        if instance:Is('WorldPartReferenceObjectData') then

            local thisInstance = WorldPartReferenceObjectData(instance)
            thisInstance:MakeWritable()

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
                thisInstance.excluded = true
            end

        end

    end

end)

----------------------------
-- Delete invisible walls --
----------------------------

-- Search for 'InvisibleCollision' in the partitions for the different parts of the level (e.g. DesertFort, HighwayToTeheran, etc). Find any entries under the StaticModelGroupEntityData MemberDatas array and erase them.
-- For SP_Tank, there are few enough to do it manually with InstanceLoadHandlers, but for some missions you may want to use an iterator instead.

-- From Desert Intro

--[[ResourceManager:RegisterInstanceLoadHandler(Guid('0F491108-2F72-47CB-8337-6AFBEB459AE6'), Guid('F0234819-F50E-C404-F86B-7FB834E4FEEF'), function(instance) -- To change
    print('Erasing invisible wall from Desert Intro...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.memberDatas:erase(1)
end)

-- From Desert Fort

ResourceManager:RegisterInstanceLoadHandler(Guid('44234CB8-700B-461D-AF51-4FD9555128A7'), Guid('34D6FD99-2707-CB00-2830-382DE45F65B1'), function(instance)
    print('Erasing invisible walls from Desert Fort...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.memberDatas:erase(41)
    thisInstance.memberDatas:erase(36)
    thisInstance.memberDatas:erase(9)
end)

-- From Highway of Death

ResourceManager:RegisterInstanceLoadHandler(Guid('C6FEE734-0FBC-475A-8773-16CEE51596D0'), Guid('25E9C356-A21B-BB2E-F960-794BB98DE259'), function(instance)
    print('Erasing invisible walls from Highway of Death...')
    local thisInstance = StaticModelGroupEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.memberDatas:erase(10)
    thisInstance.memberDatas:erase(8)
    thisInstance.memberDatas:erase(7)
    thisInstance.memberDatas:erase(6)
    thisInstance.memberDatas:erase(4)
    thisInstance.memberDatas:erase(2)
end)]]

-- Fix this - crash on server start (hidden dependencies?)

----------------------------------------------------------------
-- Map modifications (thanks to MP_Lake and Janssent's Tools) --
----------------------------------------------------------------

-- NOTE: This map is just a showcase - it's not good, bc I'm not a map maker, and didn't trust myself to make much other than what's already there.

-- US/MEC bases (US at Thunder Run start, MEC in South Kashan garrison) -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- United States -1857, 73, -271

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('6AA1D505-D1FD-49AF-866B-F833C35E1933'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform.trans = Vec3(-1857, 73, -271)

end)

-- Middle Eastern Coalition 164, 77, -1047

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('E78C2DC8-9CA8-4458-B54F-57DCA1B559E4'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform.trans = Vec3(164, 77, -1047)

end)

-- Objective positions --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Desert Fort (A) GUID FEA2A91C-04DB-4880-A9C2-0926F7A486C8 (Flag GUID 80606090-DFBB-44F3-AD30-51840C20C304)

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('FEA2A91C-04DB-4880-A9C2-0926F7A486C8'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-1056.319336, 80, 813.461914),
        Vec3(-1125.491211, 80, 811.569336),
        Vec3(-1136.620117, 80, 806.721680),
        Vec3(-1161.549805, 80, 779.658203),
        Vec3(-1174.988281, 80, 759.330078),
        Vec3(-1176.727539, 80, 746.033203),
        Vec3(-1175.792969, 80, 736.030273),
        Vec3(-1133.903320, 80, 642.691406),
        Vec3(-1121.086914, 80, 636.016602),
        Vec3(-1063.087891, 80, 632.347656),
        Vec3(-1005.078125, 80, 638.009766),
        Vec3(-979.111328, 80, 652.324219),
        Vec3(-939.528320, 80, 753.643311),
        Vec3(-982.945313, 80, 811.555664),
        Vec3(-1025.959961, 80, 813.463867)
    }
    
    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('80606090-DFBB-44F3-AD30-51840C20C304'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(-1063.26, 90.08, 759.29) -- x+4.12 y-0.11 z+38.63 to offset the offset
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Oil Plant (B) GUID E228DBEB-2D6B-4D2B-A173-D96F6EA04F0A (Flag GUID 0559C1F9-AC16-45B4-9E98-81E01FDFD44E)

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('E228DBEB-2D6B-4D2B-A173-D96F6EA04F0A'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-317.167999, 97, 1658.850586),
        Vec3(-308.229492, 97, 1643.792969),
        Vec3(-281.203064, 97, 1664.328247),
        Vec3(-239.878860, 97, 1669.187500),
        Vec3(-239.388672, 97, 1757.655273),
        Vec3(-342.937500, 97, 1767.124023),
        Vec3(-400.335938, 97, 1748.425781),
        Vec3(-402.444366, 97, 1704.965820),
        Vec3(-338.353516, 97, 1645.749023),
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('0559C1F9-AC16-45B4-9E98-81E01FDFD44E'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(-326.328125, 99.273239, 1692.379883)
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Checkpoint 'Tarmac' (C) GUID 192BC78D-544D-4645-92AD-9A7348CBE50D (Flag GUID CF9C8068-1E27-43BC-A581-82F603C63C85)

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('192BC78D-544D-4645-92AD-9A7348CBE50D'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(363.420898, 95.363083, 796.820313),
        Vec3(297.358398, 95.260544, 813.316406),
        Vec3(327.819336, 97.064255, 920.974609),
        Vec3(399.103271, 95.445137, 911.252930),
        Vec3(394.338867, 95.379684, 893.639893),
        Vec3(418.082306, 96.496872, 876.838867),
        Vec3(430.332031, 95.096481, 841.507813),
        Vec3(414.779572, 94.452927, 774.192383)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('CF9C8068-1E27-43BC-A581-82F603C63C85'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    
    local flagPos = Vec3(351.98, 95.471481, 820.74) -- x+1.95 y+0 z-11.26
    thisInstance.blueprintTransform.trans = flagPos

end)

-- Overpass (D) GUID 6863F6D5-6E96-499B-B7A4-FAF1511C8DF3 (Flag GUID 39DC57BA-0B3F-4D1D-9A06-DAF88B3310F8)

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('6863F6D5-6E96-499B-B7A4-FAF1511C8DF3'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(322.294891, 75, 305.320313),
        Vec3(315.044983, 75, 326.410156),
        Vec3(313.163849, 75, 372.411133),
        Vec3(307.391541, 75, 372.280273),
        Vec3(307.627869, 75, 379.854553),
        Vec3(310.595703, 75, 380.652374),
        Vec3(302.236298, 75, 398.272430),
        Vec3(300.133789, 75, 398.288086),
        Vec3(299.824158, 75, 404.663086),
        Vec3(295.355621, 75, 404.928558),
        Vec3(291.120117, 75, 386.808624),
        Vec3(291.879883, 75, 381.076172),
        Vec3(271.990112, 75, 381.147461),
        Vec3(274.680664, 75, 317.301758),
        Vec3(283.622101, 75, 316.226532),
        Vec3(296.389648, 75, 332.384766),
        Vec3(297.908203, 75, 321.577148),
        Vec3(302.658203, 75, 312.404297)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('39DC57BA-0B3F-4D1D-9A06-DAF88B3310F8'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    
    local flagPos = Vec3(271.54, 98.99, 331.73) -- x-11.65 y+1.05 z-14.04
    thisInstance.blueprintTransform.trans = flagPos

end)

-- North Kashan (E) GUID 14E0CAFF-1BBB-42C4-BA24-2DB957928A71 (Flag GUID BC84FAAA-9D77-480B-8E0A-376C91757994)

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('14E0CAFF-1BBB-42C4-BA24-2DB957928A71'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    points = {
        Vec3(506.538086, 132.479294, -514.996094),
        Vec3(526.885742, 135.649216, -525.658447),
        Vec3(562.267578, 134.165817, -528.819336),
        Vec3(613.723633, 131.249802, -465.362305),
        Vec3(654.541992, 128.479294, -475.155273),
        Vec3(632.389648, 129.689255, -556.585938),
        Vec3(601.025146, 130.503738, -594.287109),
        Vec3(531.167969, 127.805527, -570.202148),
        Vec3(505.814270, 132.208817, -514.450195)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('BC84FAAA-9D77-480B-8E0A-376C91757994'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local flagPos = Vec3(594.1, 131.28, -465.78) -- x+6.15 y+0.21 z+33.91    
    thisInstance.blueprintTransform.trans = flagPos

end)

-- OOB ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- For US (GUID 107682E8-2D5E-4EF4-987C-587FECA9B546)

ResourceManager:RegisterInstanceLoadHandler(Guid('061ABAC4-7D42-423F-B8E1-A4789AB79016'), Guid('107682E8-2D5E-4EF4-987C-587FECA9B546'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-2069.911865, 90.388512, -999.320435),
        Vec3(-2693.773682, 74.798660, -402.875671),
        Vec3(-941.410156, 96.688324, 1943.033203),
        Vec3(-131.768555, 105.278122, 2228.753906), -- Common (N)
        Vec3(221.783737, 116.967110, 1704.198486), -- Common (N)
        Vec3(443.151093, 103.864059, 1726.559570), -- Common (N)
        Vec3(930.909912, 103.558380, 1211.969727), -- Common (N)
        Vec3(1065.031982, 134.299637, -289.988281), -- Common (N)
        Vec3(690.580078, 118.728317, -837.725586),
        Vec3(-186.247955, 122.662560, -179.989075), -- Common (MOUNTAINS)
        Vec3(-71.912071, 116.878433, -2.030560), -- Common (MOUNTAINS)
        Vec3(-17.760878, 109.547195, 368.242279), -- Common (MOUNTAINS)
        Vec3(146.945328, 95.944176, 586.379883), -- Common (MOUNTAINS)
        Vec3(-493.620392, 90.103004, 915.332092), -- Common (MOUNTAINS)
        Vec3(-840.219666, 104.079849, 868.670044), -- Common (MOUNTAINS)
        Vec3(-628.591187, 112.227951, 417.284882),
        Vec3(-1119.941528, 110.083817, -431.093750)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

-- For MEC (GUID 28BDA22D-1212-4A41-A643-E0215D834F42)

ResourceManager:RegisterInstanceLoadHandler(Guid('061ABAC4-7D42-423F-B8E1-A4789AB79016'), Guid('28BDA22D-1212-4A41-A643-E0215D834F42'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    local points = {
        Vec3(-988.837585, 126.224678, -1390.169312),
        Vec3(264.420746, 112.333000, -1443.980713),
        Vec3(1065.031982, 134.299637, -289.988281), -- Common (N)
        Vec3(930.909912, 103.558380, 1211.969727), -- Common (N)
        Vec3(443.151093, 103.864059, 1726.559570), -- Common (N)
        Vec3(221.783737, 116.967110, 1704.198486), -- Common (N)
        Vec3(-131.768555, 105.278122, 2228.753906), -- Common (N)
        Vec3(-1487.871948, 75.086723, 757.384644),
        Vec3(-1066.978394, 90.812767, 223.874817),
        Vec3(-890.487976, 83.735275, 485.128113),
        Vec3(-875.391296, 90.376869, 751.975220),
        Vec3(-840.219666, 104.079849, 868.670044), -- Common (MOUNTAINS)
        Vec3(-493.620392, 90.103004, 915.332092), -- Common (MOUNTAINS)
        Vec3(146.945328, 95.944176, 586.379883), -- Common (MOUNTAINS)
        Vec3(-17.760878, 109.547195, 368.242279), -- Common (MOUNTAINS)
        Vec3(-71.912071, 116.878433, -2.030560), -- Common (MOUNTAINS)
        Vec3(-186.247955, 122.662560, -179.989075), -- Common (MOUNTAINS)
        Vec3(-50.178631, 116.822327, -386.094299)
    }

    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)

-- NOTE: Addition/deletion of buildings, roads, etc. will be done with MapEditor ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Few things will be added/removed, because this mod is just a showcase; although, I am keen to make a large-scale BF2:PR Kashan Desert-like map for Reality Mod at some point; probably when terrain editing comes to flatten land for runways.