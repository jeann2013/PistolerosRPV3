ESX = nil
local playersProcessing = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('caruby_farm:sell')
AddEventHandler('caruby_farm:sell', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = config.items[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		return
	end

	if xItem.count < amount then
		return
	end

	price = ESX.Math.Round(price * amount)
	xPlayer.addMoney(price)

	xPlayer.removeInventoryItem(xItem.name, amount)

end)

RegisterServerEvent('caruby_farm:pickedUp')
AddEventHandler('caruby_farm:pickedUp', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('rice')
	local rice = math.random(5, 10)
	if config.limit['rice'] ~= -1 and (xItem.count + rice) > config.limit['rice'] then
		--
	else
		xPlayer.addInventoryItem(xItem.name, rice)
	end
end)

ESX.RegisterServerCallback('caruby_farm:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem(item)

	if config.limit['rice_pro'] ~= -1 and xItem.count >= config.limit['rice_pro'] then
		cb(false)
	else
		cb(true)
	end
end)
ESX.RegisterServerCallback('caruby_farm:haveItem', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('sickle')

	if xItem.count >= 1 then
		cb(true)
	else
		cb(false)
	end
end)

RegisterServerEvent('caruby_farm:process')
AddEventHandler('caruby_farm:process', function()
	if not playersProcessing[source] then
		local _source = source

		playersProcessing[_source] = ESX.SetTimeout(3500, function()			
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xMin, xMax = xPlayer.getInventoryItem('rice'), xPlayer.getInventoryItem('rice_pro')	

			if xMax.count >= config.limit["rice_pro"] then
				xPlayer.showNotification("No puedes llevar mas arroz procesado")			
			elseif xMin.count < 5  then				
				xPlayer.showNotification("Debes de tener minimo 5 arroz cosechado")
			else
				xPlayer.removeInventoryItem('rice', 5)
				xPlayer.addInventoryItem('rice_pro', 1)
			end

			playersProcessing[_source] = nil
		end)
	end
end)

function CancelProcessing(playerID)
	if playersProcessing[playerID] then
		ESX.ClearTimeout(playersProcessing[playerID])
		playersProcessing[playerID] = nil
	end
end

RegisterServerEvent('caruby_farm:cancelProcessing')
AddEventHandler('caruby_farm:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
