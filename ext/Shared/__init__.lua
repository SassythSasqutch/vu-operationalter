-- Janssent is to thank for the idea behind this - loading an MP map and adding the SP terrain, instead of loading an SP map and adding the MP logic (because, seriously, fuck that second approach)

spMap = 'sp_tank' -- The SP or COOP map to load - there are also some GUIDs for directories and terrain data to change when converting this to other maps. Where this has to be done, there is a comment at the end of the line.

-- Check map being loaded
Events:Subscribe('Level:LoadResources', function()

    if SharedUtils:GetLevelName() ~= 'Levels/MP_012/MP_012' or SharedUtils:GetCurrentGameMode() ~= 'ConquestLarge0' then
        print('Server is not loading Operation Firestorm MP_012 Conquest Large, but \''..SharedUtils:GetLevelName()..'\' for \''..SharedUtils:GetCurrentGameMode()..'\' - doing nothing...')
        return
    else
        print('Operation Firestorm MP_012 Conquest Large being loaded - replacing with '..spMap..'...')
        require '__shared/DataLoad'
        require '__shared/MpTerrainAssetRemove'
        require '__shared/TerrainReplace'
        require '__shared/MpTerrainBlock'
        require '__shared/SkyboxReplace'
        require '__shared/SpReferenceDataLoad'
        require '__shared/SpLogicExclude'
        require '__shared/MpMinimapRemoveTexture'
        require '__shared/MpMapModifications/CQL_MainDeployments'
        require '__shared/MpMapModifications/CQL_Objectives'
        require '__shared/MpMapModifications/CQL_ObjectiveSpawns'
        require '__shared/MpMapModifications/CQL_OOB'
        require '__shared/MpMapModifications/CQL_CapturePointA_InitialOwnerSet'
        require '__shared/SpMapModifications/RemoveGreenSmoke'
        --require '__shared/SpMapModifications/RemoveTeheran'
        require '__shared/SpMapModifications/RemoveInvisibleWalls'
    end

end)