ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Code

local Bail = {}

ESX.RegisterServerCallback('qb-hotdogjob:server:HasMoney', function(source, cb)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    if Player.getMoney() >= Config.Bail then
        Player.removeMoney(Config.Bail)
        Bail[Player.identifier] = true
        cb(true)
    elseif Player.getAccount('bank').money >= Config.Bail then
        Player.removeAccountMoney('bank', Config.Bail)
        Bail[Player.identifier] = true
        cb(true)
    else
        Bail[Player.identifier] = false
        cb(false)
    end
end)

ESX.RegisterServerCallback('qb-hotdogjob:server:BringBack', function(source, cb)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    if Bail[Player.identifier] then
        Player.addMoney(Config.Bail)
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('qb-hotdogjob:server:Sell')
AddEventHandler('qb-hotdogjob:server:Sell', function(Amount, Price)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    Player.addMoney(tonumber(Amount * Price))
end)










































--EXTRA LEAKS ! --EXTRA LEAKS ! --EXTRA LEAKS !