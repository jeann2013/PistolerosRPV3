ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('bb_emcmds:checkHasPhone', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local qu = xPlayer.getInventoryItem('phone').count
    if qu >= 1 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('bb_emcmds:sendclients')
AddEventHandler('bb_emcmds:sendclients', function(j, args, coords)
    local _source = source
    args = table.concat(args, ' ')

    local name = GetCharacterName(_source)
    TriggerClientEvent('bb_emcmds:sendToEmergancy', -1, j, args, name, coords)
end)

RegisterServerEvent('bb_emcmds:serverSend')
AddEventHandler('bb_emcmds:serverSend', function(t)
    local _source = source
    TriggerClientEvent('chat:addMessage', source, {
        template = t,
        args = {}
    })
end)

function GetCharacterName(source)
    local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
        ['@identifier'] = GetPlayerIdentifiers(source)[1]
    })


    if result[1] and result[1].firstname and result[1].lastname then
        return ('%s %s'):format(result[1].firstname, result[1].lastname)
    else
        return GetPlayerName(source)
    end
end