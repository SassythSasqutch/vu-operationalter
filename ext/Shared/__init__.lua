-- Janssent is to thank for the idea behind this - loading an MP map and adding the SP terrain, instead of loading an SP map and adding the MP logic (because, seriously, fuck that second approach)

spMap = 'sp_tank' -- The SP or COOP map to load - there are also some GUIDs for directories and terrain data to change when converting this to other maps. Where this has to be done, there is a comment at the end of the line.

-- Check map being loaded
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    if levelName ~= 'Levels/MP_012/MP_012' or gameMode ~= 'ConquestLarge0' then
        print('Server is not loading Operation Firestorm MP_012 Conquest Large - closing...')
        --os.exit() -- Not possible in VEXT - wait to do this whole thing after reorganising
    else
        print('Operation Firestorm MP_012 Conquest Large being loaded - loading '..spMap)
    end
end)

require('__shared/MpTerrainAssetRemove.lua')

require('__shared/SpTerrainDataPrepare.lua')

require('__shared/TerrainReplace.lua')

require('__shared/MpTerrainBlock.lua')

require('__shared/SkyboxReplace.lua')

require('__shared/SpReferenceDataLoad.lua')

require('__shared/SpLogicExclude.lua')

require('__shared/MapModifications')

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