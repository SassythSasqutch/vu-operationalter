print('Starting shared script \'DataLoad.lua\'...')

--------------------------
-- Prepare SP_Tank data --
--------------------------

print('Mounting SP level...')
ResourceManager:MountSuperBundle('levels/'..spMap..'/'..spMap)
print('Mounting Gulf of Oman...')
ResourceManager:MountSuperBundle('levels/xp1_002/xp1_002') -- Teheran Highway only for BMP and a couple map-making assets

Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
        print('Injecting bundles...')

        bundles = {
            'levels/xp1_002/xp1_002', -- Teheran Highway only for BMP and a couple map-making assets]]
            'levels/xp1_002/cq_s', -- Teheran Highway Conquest Small
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

    -- Teheran Highway Conquest Small (for BTR, map-making assets)
    print('Adding Gulf of Oman CQS registry...')
    local teheranHighwayRegistry = ResourceManager:FindInstanceByGuid(Guid('BA57F26B-896D-4745-80EC-2148AA4FABED'), Guid('4CA67086-4270-BDEC-C570-A5A709959189'))
    ResourceManager:AddRegistry(teheranHighwayRegistry, ResourceCompartment.ResourceCompartment_Game)

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
    --[[local spLevelDrive1Registry = ResourceManager:FindInstanceByGuid(Guid('85F2A766-9083-4F0F-A11D-CEE62AF439FE'), Guid('A89EEE65-BA0D-4F3F-DD63-1C219A8A0F4E'))
    ResourceManager:AddRegistry(spLevelDrive1Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Drive to Bank 2 
    local spLevelDrive2Registry = ResourceManager:FindInstanceByGuid(Guid('1856E950-1702-4188-8B0F-A6C873A3B4BC'), Guid('96EFA3A7-9D0B-915E-9692-9EAA7C184CB4'))
    ResourceManager:AddRegistry(spLevelDrive2Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Drive to Bank 3
    local spLevelDrive3Registry = ResourceManager:FindInstanceByGuid(Guid('825D5256-4FA4-4468-9219-286E6A262D94'), Guid('B907E3FE-47C4-FEB3-D808-08927F13B51A'))
    ResourceManager:AddRegistry(spLevelDrive3Registry, ResourceCompartment.ResourceCompartment_Game)

    -- Bank Plaza
    local spLevelBankRegistry = ResourceManager:FindInstanceByGuid(Guid('C6B7EE89-A89E-4E9B-9D8E-9487ED2C76E7'), Guid('7B073BA8-6A43-F742-E63D-E164A1D29A63'))
    ResourceManager:AddRegistry(spLevelBankRegistry, ResourceCompartment.ResourceCompartment_Game)]]

end)