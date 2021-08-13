ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('vehlockpick', function(source)
	TriggerClientEvent('s_lockpick:startlockpicking', source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vehlockpick', 1)  
	TriggerClientEvent("notifyc",source)
end)
