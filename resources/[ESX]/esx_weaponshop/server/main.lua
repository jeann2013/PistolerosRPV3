ESX = nil
local shopItems = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function()

	MySQL.Async.fetchAll('SELECT * FROM weashops', {}, function(result)
		for i=1, #result, 1 do
			if shopItems[result[i].zone] == nil then
				shopItems[result[i].zone] = {}
			end

			table.insert(shopItems[result[i].zone], {
				item  = result[i].item,
				price = result[i].price,
				label = ESX.GetWeaponLabel(result[i].item)
			})
		end

		table.insert(shopItems["GunShop"], {
			item  = "clip",
			price = Config.PriceClip,
			label = "Munición"
		})

		table.insert(shopItems["BlackWeashop"], {
			item  = "clip",
			price = Config.PriceClip,
			label = "Munición"
		})		

		TriggerClientEvent('esx_weaponshop:sendShop', -1, shopItems)
	end)

end)

ESX.RegisterServerCallback('esx_weaponshop:getShop', function(source, cb)
	cb(shopItems)
end)

ESX.RegisterServerCallback('esx_weaponshop:buyLicense', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.LicensePrice then
		xPlayer.removeMoney(Config.LicensePrice)

		TriggerEvent('esx_license:addLicense', source, 'weapon', function()
			cb(true)
		end)
	else
		xPlayer.showNotification(_U('not_enough'))
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_weaponshop:buyWeapon', function(source, cb, weaponName, zone)
	local xPlayer = ESX.GetPlayerFromId(source)
	local account = xPlayer.getAccount('money')
	

	if(weaponName == "clip") then
		if account.money >= Config.PriceClip then												
			xPlayer.addInventoryItem(weaponName, 1)			
			xPlayer.removeAccountMoney('money', Config.PriceClip)
			cb(true)
		else
			xPlayer.showNotification(_U('not_enough_money'))
			cb(false)
		end
	else 		
		local price = GetPrice(weaponName, zone)
		if price == 0 then
			print(('esx_weaponshop: %s attempted to buy a unknown weapon!'):format(xPlayer.identifier))
			cb(false)
		else
			if xPlayer.hasWeapon(weaponName) then
				xPlayer.showNotification(_U('already_owned'))
				cb(false)
			else
				if zone == 'BlackWeashop' then
					if xPlayer.getAccount('black_money').money >= price then
						xPlayer.removeAccountMoney('black_money', price)
						xPlayer.addWeapon(weaponName, 42)		
						cb(true)
					else
						xPlayer.showNotification(_U('not_enough_black'))
						cb(false)
					end
				else
					if xPlayer.getMoney() >= price then
						xPlayer.removeMoney(price)
						xPlayer.addWeapon(weaponName, 42)
		
						cb(true)
					else
						xPlayer.showNotification(_U('not_enough'))
						cb(false)
					end
				end
			end
		end
	end
end)

function GetPrice(weaponName, zone)
	local price = MySQL.Sync.fetchScalar('SELECT price FROM weashops WHERE zone = @zone AND item = @item', {
		['@zone'] = zone,
		['@item'] = weaponName
	})

	if price then
		return price
	else
		return 0
	end
end

RegisterServerEvent('esx_weashop:remove')
AddEventHandler('esx_weashop:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('esx_weashop:clipcli', source)
end)
