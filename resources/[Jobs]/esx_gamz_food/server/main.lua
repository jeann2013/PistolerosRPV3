local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent("gamz-food:removeMoney")
AddEventHandler("gamz-food:removeMoney", function(money)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    xPlayer.removeMoney(money)
end)

RegisterServerEvent("gamz-food:addItem")
AddEventHandler("gamz-food:addItem", function(item)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)    
    if item == 'Pollo Frito' then
        xPlayer.addInventoryItem('pollofrito', 10)
    end
    if item == 'Hotdog' then
        xPlayer.addInventoryItem('hotdog', 10)
    end
    if item == 'Pepsi Cola' then
        xPlayer.addInventoryItem('pepsicola', 10)
    end
    if item == 'Sprite' then
        xPlayer.addInventoryItem('sprite', 10)
    end
    
end)