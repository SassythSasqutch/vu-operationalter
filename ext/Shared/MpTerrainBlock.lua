print('Starting shared script \'MpTerrainBlock.lua\'...')

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