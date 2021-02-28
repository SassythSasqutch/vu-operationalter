-- This script replaces everything deleted in RemoveTeheran.lua and makes some extra modifications for multiplayer, using MapLoader. Thanks to Powback's CustomLevel mod.

print('Loading server script \'MpCustomLevelLoad.lua\'...')

local presetJSON = require "MpCustomLevelPreset"

local function DecodeParams(table)
    if(table == nil) then
        print("No table received")
        return false
	end
	for key, value in pairs(table) do
		if key == 'transform' or key == 'localTransform'then
			local linearTransform = LinearTransform(
					Vec3(value.left.x, value.left.y, value.left.z),
					Vec3(value.up.x, value.up.y, value.up.z),
					Vec3(value.forward.x, value.forward.y, value.forward.z),
					Vec3(value.trans.x, value.trans.y, value.trans.z))

			table[key] = linearTransform

		elseif type(value) == "table" then
			table[key] = DecodeParams(value)
		end

	end

	return table
end

Events:Subscribe('Level:LoadResources', function()
	print('Sending custom level for Thunder Run to MapLoader...')
	local preset = DecodeParams(json.decode(presetJSON))
	Events:Dispatch('MapLoader:LoadLevel', preset)
end)