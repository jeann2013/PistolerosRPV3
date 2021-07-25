ESX = nil
local playersProcessingCannabis = {}
local playersProcessingResina = {}
local playersProcessingPeyote = {}
local playersProcessingAdormidera = {}
local outofbound = true
local alive = true

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_drugs:sellDrug')
AddEventHandler('esx_drugs:sellDrug', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.DrugDealerItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('esx_drugs: %s attempted to sell an invalid drug!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
		xPlayer.showNotification(_U('dealer_notenough'))
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveBlack then
		xPlayer.addAccountMoney('black_money', price)
	else
		xPlayer.addMoney(price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)
	xPlayer.showNotification(_U('dealer_sold', amount, xItem.label, ESX.Math.GroupDigits(price)))
end)

ESX.RegisterServerCallback('esx_drugs:buyLicense', function(source, cb, licenseName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local license = Config.LicensePrices[licenseName]

	if license then
		if xPlayer.getMoney() >= license.price then
			xPlayer.removeMoney(license.price)

			TriggerEvent('esx_license:addLicense', source, licenseName, function()
				cb(true)
			end)
		else
			cb(false)
		end
	else
		print(('esx_drugs: %s attempted to buy an invalid license!'):format(xPlayer.identifier))
		cb(false)
	end
end)

RegisterServerEvent('esx_drugs:pickedUpCannabis')
AddEventHandler('esx_drugs:pickedUpCannabis', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('cannabis', cime) then
		xPlayer.addInventoryItem('cannabis', cime)
	else
		xPlayer.showNotification(_U('weed_inventoryfull'))
	end
end)

RegisterServerEvent('esx_drugs:pickedUpAmapola')
AddEventHandler('esx_drugs:pickedUpAmapola', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('resina', cime) then
		xPlayer.addInventoryItem('resina', cime)
	else
		xPlayer.showNotification(_U('coca_inventoryfull'))
	end
end)

RegisterServerEvent('esx_drugs:pickedUpPeyote')
AddEventHandler('esx_drugs:pickedUpPeyote', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('peyote', cime) then
		xPlayer.addInventoryItem('peyote', cime)
	else
		xPlayer.showNotification(_U('metha_inventoryfull'))
	end
end)

RegisterServerEvent('esx_drugs:pickedUpAdormidera')
AddEventHandler('esx_drugs:pickedUpAdormidera', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local cime = math.random(5,10)

	if xPlayer.canCarryItem('adormidera', cime) then
		xPlayer.addInventoryItem('adormidera', cime)
	else
		xPlayer.showNotification(_U('opio_inventoryfull'))
	end
end)

ESX.RegisterServerCallback('esx_drugs:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb(xPlayer.canCarryItem(item, 1))
end)

RegisterServerEvent('esx_drugs:outofbound')
AddEventHandler('esx_drugs:outofbound', function()
	outofbound = true
end)

RegisterServerEvent('esx_drugs:quitprocess')
AddEventHandler('esx_drugs:quitprocess', function()
	can = false
end)

ESX.RegisterServerCallback('esx_drugs:cannabis_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xCannabis = xPlayer.getInventoryItem('cannabis').count
	cb(xCannabis)
end)

ESX.RegisterServerCallback('esx_drugs:resina_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xResina = xPlayer.getInventoryItem('resina').count
	cb(xResina)
end)

ESX.RegisterServerCallback('esx_drugs:adormidera_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xResina = xPlayer.getInventoryItem('adormidera').count
	cb(xResina)
end)

ESX.RegisterServerCallback('esx_drugs:peyote_count', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xResina = xPlayer.getInventoryItem('peyote').count
	cb(xResina)
end)

RegisterServerEvent('esx_drugs:processCannabis')
AddEventHandler('esx_drugs:processCannabis', function()
	if not playersProcessingCannabis[source] then
		local _source = source

		playersProcessingCannabis[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCannabis = xPlayer.getInventoryItem('cannabis')
			local maria = 0
			local canna = 0
			if xCannabis.count >= 3 then
				while xCannabis.count >=3 and xPlayer.canSwapItem('cannabis', 3, 'weed_pooch', 1) do
					canna = canna+3
					xCannabis.count= xCannabis.count - 3
					maria = maria+1
					if(xCannabis.count<3) then
						xPlayer.showNotification(_U('weed_processed'))
					elseif not xPlayer.canSwapItem('cannabis', 3, 'weed_pooch', 1) then
						xPlayer.showNotification(_U('weed_processingfull'))
					end
				end
				xPlayer.removeInventoryItem('cannabis', canna)
				xPlayer.addInventoryItem('weed_pooch', maria)
			else
				xPlayer.showNotification(_U('weed_processingenough'))
			end

			playersProcessingCannabis[_source] = nil
		end)
	else
		print(('esx_drugs: %s attempted to exploit weed processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_drugs:processResina')
AddEventHandler('esx_drugs:processResina', function()
	if not playersProcessingResina[source] then
		local _source = source

		playersProcessingResina[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCannabis = xPlayer.getInventoryItem('resina')
			local maria = 0
			local canna = 0
			if xCannabis.count >= 3 then
				while xCannabis.count >=3 and xPlayer.canSwapItem('resina', 3, 'coke_pooch', 1) do
					canna = canna+3
					xCannabis.count= xCannabis.count - 3
					maria = maria+1
					if(xCannabis.count<3) then
						xPlayer.showNotification(_U('coca_processed'))
					elseif not xPlayer.canSwapItem('resina', 3, 'coke_pooch', 1) then
						xPlayer.showNotification(_U('weed_processingfull'))
					end
				end
				xPlayer.removeInventoryItem('resina', canna)
				xPlayer.addInventoryItem('coke_pooch', maria)
			else
				xPlayer.showNotification(_U('coca_processingenough'))
			end

			playersProcessingResina[_source] = nil
		end)
	else
		print(('esx_drugs: %s attempted to exploit coca processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_drugs:processPeyote')
AddEventHandler('esx_drugs:processPeyote', function()
	if not playersProcessingResina[source] then
		local _source = source

		playersProcessingResina[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCannabis = xPlayer.getInventoryItem('peyote')
			local maria = 0
			local canna = 0
			if xCannabis.count >= 3 then
				while xCannabis.count >=3 and xPlayer.canSwapItem('peyote', 3, 'meth_pooch', 1) do
					canna = canna+3
					xCannabis.count= xCannabis.count - 3
					maria = maria+1
					if(xCannabis.count<3) then
						xPlayer.showNotification(_U('metha_processed'))
					elseif not xPlayer.canSwapItem('peyote', 3, 'meth_pooch', 1) then
						xPlayer.showNotification(_U('metha_processingfull'))
					end
				end
				xPlayer.removeInventoryItem('peyote', canna)
				xPlayer.addInventoryItem('meth_pooch', maria)
			else
				xPlayer.showNotification(_U('metha_processingenough'))
			end

			playersProcessingResina[_source] = nil
		end)
	else
		print(('esx_drugs: %s attempted to exploit metha processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_drugs:processAdormidera')
AddEventHandler('esx_drugs:processAdormidera', function()
	if not playersProcessingResina[source] then
		local _source = source

		playersProcessingResina[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xCannabis = xPlayer.getInventoryItem('adormidera')
			local maria = 0
			local canna = 0
			if xCannabis.count >= 3 then
				while xCannabis.count >=3 and xPlayer.canSwapItem('adormidera', 3, 'opium_pooch', 1) do
					canna = canna+3
					xCannabis.count= xCannabis.count - 3
					maria = maria+1
					if(xCannabis.count<3) then
						xPlayer.showNotification(_U('opio_processed'))
					elseif not xPlayer.canSwapItem('adormidera', 3, 'opium_pooch', 1) then
						xPlayer.showNotification(_U('opio_processingfull'))
					end
				end
				xPlayer.removeInventoryItem('adormidera', canna)
				xPlayer.addInventoryItem('opium_pooch', maria)
			else
				xPlayer.showNotification(_U('opio_processingenough'))
			end

			playersProcessingResina[_source] = nil
		end)
	else
		print(('esx_drugs: %s attempted to exploit opium processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessingCoca(playerId)
	if playersProcessingResina[playerId] then
		ESX.ClearTimeout(playersProcessingResina[playerId])
		playersProcessingResina[playerId] = nil
	end
end

function CancelProcessingMetha(playerId)
	if playersProcessingPeyote[playerId] then
		ESX.ClearTimeout(playersProcessingPeyote[playerId])
		playersProcessingPeyote[playerId] = nil
	end
end

function CancelProcessingOpio(playerId)
	if playersProcessingAdormidera[playerId] then
		ESX.ClearTimeout(playersProcessingAdormidera[playerId])
		playersProcessingAdormidera[playerId] = nil
	end
end

RegisterServerEvent('esx_drugs:cancelProcessing')
AddEventHandler('esx_drugs:cancelProcessing', function()
	CancelProcessingCoca(source)
end)

AddEventHandler('esx:playerDropped', function(playerId, reason)
	CancelProcessingCoca(playerId)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessingCoca(source)
end)

function CancelProcessing(playerId)
	if playersProcessingCannabis[playerId] then
		ESX.ClearTimeout(playersProcessingCannabis[playerId])
		playersProcessingCannabis[playerId] = nil
	end
end

RegisterServerEvent('esx_drugs:cancelProcessing')
AddEventHandler('esx_drugs:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerId, reason)
	CancelProcessing(playerId)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
