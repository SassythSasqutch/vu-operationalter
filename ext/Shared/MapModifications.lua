-- NOTE: This map is just a showcase - it's not good, bc I'm not a map maker, and didn't trust myself to make much other than what's already there.

--------------------------------------------------------------------------
-- US/MEC bases (US at Thunder Run start, MEC in South Kashan garrison) --
--------------------------------------------------------------------------

-- United States -1857, 73, -271 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Marker or something?

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('6AA1D505-D1FD-49AF-866B-F833C35E1933'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform.trans = Vec3(-1857, 73, -271)

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('9962704A-11F6-4AB3-BA85-6FD9CAEE43D9'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(0.844317, 0.000000, -0.535844),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.535844, 0.000000, 0.844317),
        Vec3(-2113.918945, 74.435349, -513.787109)
    )

    thisInstance.transform = infSpawn1

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('F41073AD-1E09-4E87-BA52-C80ACBBC04E7'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(0.437573, 0.000000, -0.899183),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.899183, 0.000000, 0.437573),
        Vec3(-2128.546631, 75.234177, -463.525391)
    )

    thisInstance.transform = infSpawn2

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('CBC50A2F-5AFD-4239-AA50-1C0ECA77F3C1'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.892605, 0.000000, -0.450840),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.450840, 0.000000, 0.892605),
        Vec3(-2097.262695, 74.039841, -526.291016)
    )

    thisInstance.transform = infSpawn3

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('4D91408A-6F09-4583-B92E-B6E710A479FD'), Guid('679CBAE8-DCB3-4CF5-A055-FFD000750A9D'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(0.999393, 0.000000, -0.034843),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.034843, 0.000000, 0.999393),
        Vec3(-2083.657959, 74.451958, -495.224609)
    )

    thisInstance.transform = infSpawn4

end)

-- UH-1Y Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F9AEEE45-9C28-4517-8AF9-79EC23DE322C'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local venomSpawn1 = LinearTransform(
        Vec3(0.747369, -0.042789, -0.663029),
        Vec3(0.024834, 0.999026, -0.036480),
        Vec3(0.663945, 0.010798, 0.747704),
        Vec3(-2116.036377, 75.144028, -498.519623)
    )

    thisInstance.blueprintTransform = venomSpawn1

end)

-- UH-1Y Spawn (replacing F/A-18) - for now disable F/A-18

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('1FF0C503-EDD0-4228-8E6D-0379BBC16DDC'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local venomSpawn2 = LinearTransform(
        Vec3(0.747369, -0.042789, -0.663029),
        Vec3(0.024834, 0.999026, -0.036480),
        Vec3(0.663945, 0.010798, 0.747704),
        Vec3(-2106.498291, 74.888382, -509.731293)
    )

    thisInstance.blueprintTransform = venomSpawn2

    thisInstance.blueprint = nil

end)

-- UH-1Y Spawn (replacing F/A-18) - for now disable F/A-18

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('E01A2B80-C865-4685-90D2-CD30349D801A'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local venomSpawn3 = LinearTransform(
        Vec3(0.747369, -0.042789, -0.663029),
        Vec3(0.024834, 0.999026, -0.036480),
        Vec3(0.663945, 0.010798, 0.747704),
        Vec3(-2096.96, 74.888382, -529.94)
    )

    thisInstance.blueprintTransform = venomSpawn3

    thisInstance.blueprint = nil

end)

-- HMMWV Spawn (replacing Growler)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('00445605-384F-4C46-ADE8-E808F8096597'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local humveeSpawn1 = LinearTransform(
        Vec3(0.747369, -0.042789, -0.663029),
        Vec3(0.036512, 0.999297, -0.008560),
        Vec3(0.726127, -0.020644, 0.687251),
        Vec3(-2094.206055, 74.012596, -526.605408)
    )

    thisInstance.blueprintTransform = humveeSpawn1

    humveeBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('7A9B2F60-BEFD-DF43-A0E5-0A097C6C973B'), Guid('E4069B76-79A8-2AD2-D845-E079DB62A92F')))
    thisInstance.blueprint = humveeBp
    

end)

-- HMMWV Spawn (new)

-- HMMWV Spawn (new)

-- HMMWV Spawn (new)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('5DF090F3-3918-443B-A16C-3940EFC71266'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn1 = LinearTransform(
        Vec3(0.748066, 0.031152, -0.662893),
        Vec3(0.016937, 0.997676, 0.065999),
        Vec3(0.663408, -0.060599, 0.745800),
        Vec3(-2115.694092, 76.031181, -471.987762)
    )

    thisInstance.blueprintTransform = abramsSpawn1

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('8DFF5C86-ECA6-46E9-AB96-0A61809D97BF'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn2 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2103.350586, 75.885071, -482.474304)
    )

    thisInstance.blueprintTransform = abramsSpawn2

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('3E3CE71B-53B5-4370-AD35-6672CEC8C82B'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn3 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2091.01, 75.885071, -492.95)
    )

    thisInstance.blueprintTransform = abramsSpawn3

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)

-- M1A2 Spawn (using old, changing to SP version)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('4517F944-7996-4D98-8623-6233274C317F'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn4 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2078.67, 75.885071, -503.43)
    )

    thisInstance.blueprintTransform = abramsSpawn4

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)

-- M1A2 Spawn (replacing LAV-AD)

--[[ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('5DF090F3-3918-443B-A16C-3940EFC71266'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn5 = LinearTransform(
        Vec3(0.772469, 0.027369, -0.634462),
        Vec3(0.024847, 0.997003, 0.073260),
        Vec3(0.634566, -0.072355, 0.769474),
        Vec3(-2066.33, 75.885071, -513.91)
    )

    thisInstance.blueprintTransform = abramsSpawn5

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)

-- M1A2 Spawn (replacing AH-1Z)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('5DF090F3-3918-443B-A16C-3940EFC71266'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn6 = LinearTransform(
    Vec3(0.772469, 0.027369, -0.634462),
    Vec3(0.024847, 0.997003, 0.073260),
    Vec3(0.634566, -0.072355, 0.769474),
    Vec3(-2053.99, 75.885071, -524.39)
    )

    thisInstance.blueprintTransform = abramsSpawn6

    local abramsBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2C506D24-C455-470A-BE80-C93341380BB1'), Guid('3D1EAFE6-297A-4061-97EB-3EF1C17513BC')))
    thisInstance.blueprint = abramsBp

end)]]


-- Middle Eastern Coalition 164, 77, -1047 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('E78C2DC8-9CA8-4458-B54F-57DCA1B559E4'), function(instance) -- Move spawn (does nothing?)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform.trans = Vec3(164, 77, -1047)

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('BF89DAC5-4776-4C3A-8AE2-6787AE281038'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(-0.449183, 0.000000, 0.893440),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.893440, 0.000000, -0.449183),
        Vec3(186.487335, 77.493950, -1014.149414)
    )

    thisInstance.transform = infSpawn1

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('E385987F-4C69-4E00-BA70-9FDFE13590D1'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(0.934772, 0.000000, 0.355249),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.355249, 0.000000, 0.934772),
        Vec3(174.442123, 77.141403, -1053.746094)
    )

    thisInstance.transform = infSpawn2

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('07856D7B-5F45-4BD8-9B6B-62332A175A0E'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.678623, 0.000000, -0.734486),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(0.734486, 0.000000, 0.678623),
        Vec3(144.278091, 73.568176, -1018.641602)
    )

    thisInstance.transform = infSpawn3

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('EA36EA9B-3ED9-4529-A97F-1BDD88FB2814'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(-0.960981, 0.000000, 0.276614),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.276614, 0.000000, -0.960981),
        Vec3(161.785172, 75.178543, -987.756104)
    )

    thisInstance.transform = infSpawn4

end)

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('D32EE752-4C4D-4359-8C10-DA1B2BCF58E9'), Guid('717CB4B6-CFB5-4F8F-8730-7DEB66799C21'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn5 = LinearTransform(
        Vec3(0.413601, 0.000000, 0.910458),
        Vec3(0.000000, 1.000000, 0.000000),
        Vec3(-0.910458, 0.000000, 0.413601),
        Vec3(159.899155, 74.898239, -1011.871094)
    )

    thisInstance.transform = infSpawn5

end)

-- Ka-60 Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('94F815AE-BED7-4DFA-BA90-225DA2DDBFF7'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local kasatkaSpawn1 = LinearTransform(
        Vec3(0.952051, 0.005823, 0.305885),
        Vec3(0.015994, 0.997504, -0.068768),
        Vec3(-0.305522, 0.070363, 0.949582),
        Vec3(175.251740, 77.012993, -1021.009644)
    )

    thisInstance.blueprintTransform = kasatkaSpawn1

end)

-- Ka-60 Spawn (replacing Su-35) - for now disable Su-35

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('C8AD95A2-C1CA-4E36-B695-DBDD4EF0D1B2'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local kasatkaSpawn2 = LinearTransform(      -- Replacing SU35
        Vec3(0.950608, 0.019911, 0.309756),
        Vec3(0.007399, 0.996203, -0.086743),
        Vec3(-0.310307, 0.084750, 0.946851),
        Vec3(189.935745, 78.772133, -1030.918823)
    )

    thisInstance.blueprintTransform = kasatkaSpawn2

    thisInstance.blueprint = nil

end)

-- Ka-60 Spawn (replacing Su-35) - for now disable Su-35

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('F08EF9FE-4D7A-46DA-A8D4-71A2A17BA840'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local kasatkaSpawn3 = LinearTransform(      -- Replacing SU35
        Vec3(0.946353, 0.015726, 0.322752),
        Vec3(0.011479, 0.996549, -0.082215),
        Vec3(-0.322931, 0.081509, 0.942906),
        Vec3(182.035660, 78.225952, -1043.902954)
    )

    thisInstance.blueprintTransform = kasatkaSpawn3

    thisInstance.blueprint = nil

end)

-- Buggy spawn (using same)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('9C4FEA95-4F4C-419F-9040-2A5A0DAF83C5'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local buggySpawn1 = LinearTransform(        -- Using same
        Vec3(0.451043, -0.047482, 0.891238),
        Vec3(0.028082, 0.998844, 0.039003),
        Vec3(-0.892060, 0.007436, 0.451855),
        Vec3(165.357803, 75.397087, -1003.388672)
    )

    thisInstance.blueprintTransform = buggySpawn1

end)

-- Buggy spawn (replacing Mi28)

--[[ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('CD1B555E-4259-4BDE-A1D2-71E71155618F'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local buggySpawn2 = LinearTransform(        -- Replacing Mi28
        Vec3(0.307687, -0.058750, 0.949672),
        Vec3(0.020327, 0.998270, 0.055171),
        Vec3(-0.951270, 0.002329, 0.308349),
        Vec3(167.897430, 75.634918, -1009.844971)
    )

    thisInstance.blueprintTransform = buggySpawn2

    local buggyBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09')))
    thisInstance.blueprint = buggyBp

end)

-- Buggy spawn (replacing Tunguska)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('4E64BAAF-791C-439C-AC8B-AC18C4361C67'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local buggySpawn3 = LinearTransform(        -- Replacing Tunguska
        Vec3(0.125749, -0.077967, 0.988994),
        Vec3(0.014702, 0.996944, 0.076725),
        Vec3(-0.991953, 0.004893, 0.126511),
        Vec3(169.833435, 75.854240, -1015.225830)
    )

    thisInstance.blueprintTransform = buggySpawn3

    local buggyBp = VehicleBlueprint(ResourceManager:FindInstanceByGuid(Guid('2EA804A7-8232-11E0-823A-BD52CA6DC6B3'), Guid('D68E417F-6103-5140-3ABC-4C7505160A09')))
    thisInstance.blueprint = buggyBp

end)]]

-- T90 spawn (using same)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('83F4C88D-5B69-42A7-AF17-9B0AD1C2E733'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn1 = LinearTransform(          -- Replacing T90
        Vec3(0.962276, 0.079472, 0.260211),
        Vec3(-0.079412, 0.996784, -0.010764),
        Vec3(-0.260230, -0.010306, 0.965492),
        Vec3(148.814331, 74.038338, -998.737305)
    )

    thisInstance.blueprintTransform = bmpSpawn1

end)

-- T90 spawn (using same)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('17403BC6-5CE5-48F0-9046-F78744F31C54'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn2 = LinearTransform(          -- Replacing T90
        Vec3(0.937299, 0.079860, 0.339252),
        Vec3(-0.086699, 0.996222, 0.005026),
        Vec3(-0.337569, -0.034124, 0.940682),
        Vec3(154.569214, 74.490265, -1017.790039)
    )
    
    thisInstance.blueprintTransform = bmpSpawn2

end)

-- T90 spawn (using same)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('D6E3674D-F84C-4AA8-980F-A5BAF9E85BB1'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn3 = LinearTransform(          -- Replacing T90
        Vec3(0.947007, 0.086301, 0.309403),
        Vec3(-0.096337, 0.995199, 0.017275),
        Vec3(-0.306426, -0.046167, 0.950774),
        Vec3(160.214493, 75.214806, -1034.991211)
    )

    thisInstance.blueprintTransform = bmpSpawn3

end)

-- T90 spawn (using same)

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('AD8361C9-B82B-4559-8462-7BEDEB595805'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local bmpSpawn4 = LinearTransform(          -- Replacing T90
        Vec3(0.947774, 0.085688, 0.307216),
        Vec3(-0.099626, 0.994574, 0.029947),
        Vec3(-0.302983, -0.058990, 0.951169),
        Vec3(165.420807, 76.175674, -1051.467773)
    )

    thisInstance.blueprintTransform = bmpSpawn4

end)

-------------------------
-- Objective positions --
-------------------------

-- Desert Fort (A) GUID FEA2A91C-04DB-4880-A9C2-0926F7A486C8 (Flag GUID 80606090-DFBB-44F3-AD30-51840C20C304) -----------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-- Oil Plant (B) GUID E228DBEB-2D6B-4D2B-A173-D96F6EA04F0A (Flag GUID 0559C1F9-AC16-45B4-9E98-81E01FDFD44E) -------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-- Checkpoint 'Tarmac' (C) GUID 192BC78D-544D-4645-92AD-9A7348CBE50D (Flag GUID CF9C8068-1E27-43BC-A581-82F603C63C85) ---------------------------------------------------------------------------------------------------------------------------------------------------------

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

-- Overpass (D) GUID 6863F6D5-6E96-499B-B7A4-FAF1511C8DF3 (Flag GUID 39DC57BA-0B3F-4D1D-9A06-DAF88B3310F8) --------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-- North Kashan (E) GUID 14E0CAFF-1BBB-42C4-BA24-2DB957928A71 (Flag GUID BC84FAAA-9D77-480B-8E0A-376C91757994) ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TODO: Cap Zone and Flag Pos are WRONG

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

---------
-- OOB --
---------

-- For US (GUID 107682E8-2D5E-4EF4-987C-587FECA9B546) -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

-- For MEC (GUID 28BDA22D-1212-4A41-A643-E0215D834F42) ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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