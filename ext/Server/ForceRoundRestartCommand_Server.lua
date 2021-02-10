-- Reload cmd

NetEvents:Subscribe('ReloadMap', function(connectedPlayer)

	print('Force reloading map...')

	RCON:SendCommand('mapList.runNextRound')

end)