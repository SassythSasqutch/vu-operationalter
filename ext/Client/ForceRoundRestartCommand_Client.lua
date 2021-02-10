-- Restart round send cmd

Console:Register('reload', 'Reloads current map.', function(args)

    NetEvents:Send('ReloadMap', thisPlayer)

    print('Informed server to reload map!')

end)