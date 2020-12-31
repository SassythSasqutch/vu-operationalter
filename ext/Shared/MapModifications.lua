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

-- UH-1Y Spawn (new)

-- UH-1Y Spawn (new)

-- HMMWV Spawn (replacing Growler)

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

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('5DF090F3-3918-443B-A16C-3940EFC71266'), function(instance)

    local thisInstance = VehicleSpawnReferenceObjectData(instance)
    thisInstance:MakeWritable()

    local abramsSpawn5 = LinearTransform(           -- Replacing LAV-AD
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

end)

-- Disable F/A-18E

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('1FF0C503-EDD0-4228-8E6D-0379BBC16DDC'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)

-- Disable F/A-18E

ResourceManager:RegisterInstanceLoadHandler(Guid('28279A3B-7E9C-4320-ACBE-6CD9F24A7ABB'), Guid('E01A2B80-C865-4685-90D2-CD30349D801A'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprint = nil

end)


-- Middle Eastern Coalition 164, 77, -1047 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('C1649E85-AFEF-4D3B-80B9-AB847FA7536C'), Guid('E78C2DC8-9CA8-4458-B54F-57DCA1B559E4'), function(instance) -- Move spawn (does nothing?)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.blueprintTransform.trans = Vec3(164, 77, -1047)

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