-- Check map being loaded
Events:Subscribe('Level:LoadResources', function(levelName, gameMode, isDedicatedServer)
    if levelName ~= 'Levels/MP_012/MP_012' then
        return
    end
end)

-- Remove minimap
Hooks:Install('UI:RenderMinimap', 100, function(hook)
    --print('Blocking minimap render...')
    hook:Return()
end)

----------------------------
-- Change objective names --
----------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('8DB9CB2A-2A16-44B8-927D-024F1AD06FCF'), Guid('74D4E354-7D4C-BBE9-007B-6F1ABD2B98C4'), function(instance)

    local thisInstance = InterfaceDescriptorData(instance)
    thisInstance:MakeWritable()

    thisInstance.fields[21].value = 'CString "Desert Fort"' -- Default Construction Site
    thisInstance.fields[20].value = 'CString "Oil Plant"' -- Default Warehouse
    thisInstance.fields[18].value = 'CString "Checkpoint \'Tarmac\'"' -- Default Filling Station
    thisInstance.fields[22].value = 'CString "Overpass"' -- Default Offices
    thisInstance.fields[19].value = 'CString "Construction Site"' -- Default Army Outpost

end)