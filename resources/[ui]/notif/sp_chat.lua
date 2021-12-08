ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('twt', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Twitter', ''..name..'', ''..msg..'', 'CHAR_STRETCH', 0)
        end
    end
end, false)

RegisterCommand('fab', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Facebook', ''..name..'', ''..msg..'', 'CHAR_DAVE', 0)
        end
    end
end, false)

RegisterCommand('amz', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Amazon', ''..name..'', ''..msg..'', 'CHAR_BEVERLY', 0)
        end
    end
end, false)

RegisterCommand('ist', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Instagram', ''..name..'', ''..msg..'', 'CHAR_BARRY', 0)
        end
    end
end, false)

RegisterCommand('ano', function(source, args, rawCommand)
    local src = source
	local msg = rawCommand:sub(5)
	local args = msg
    if player ~= false then
        local name = GetPlayerName(source)
        local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Anonyme', '', ''..msg..'', 'CHAR_ARTHUR', 0)
        end
    end
end, false)


RegisterCommand('lspd', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "police" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'LSPD', '~b~Anuncio LSPD', ''..msg..'', 'CHAR_ABIGAIL', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres policia', 'CHAR_ABIGAIL', 0)
    end
    else
    TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres policia', 'CHAR_ABIGAIL', 0)
    end
 end, false)
 
 RegisterCommand('ems', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "ambulance" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'EMS', '~b~Anuncio EMS', ''..msg..'', 'CHAR_MICHAEL', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres EMS', 'CHAR_MICHAEL', 0)
    end
    else
    TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres EMS', 'CHAR_MICHAEL', 0)
    end
 end, false)

 RegisterCommand('mec', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.job.name == "mechanic" then
        local src = source
        local msg = rawCommand:sub(5)
        local args = msg
        if player ~= false then
            local name = GetPlayerName(source)
            local xPlayers	= ESX.GetPlayers()
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Mecanico', '~b~Anuncio Mecanico', ''..msg..'', 'CHAR_MICHAEL', 0)
        end
    else
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres Mecanico', 'CHAR_MICHAEL', 0)
    end
    else
    TriggerClientEvent('esx:showAdvancedNotification', _source, 'Advertencia', '~b~No lo hagas' , '~b~No eres Mecanico', 'CHAR_MICHAEL', 0)
    end
 end, false)
 

 
 
 
 
    
    
    
    
