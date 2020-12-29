ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('fineAmount')
AddEventHandler('fineAmount', function(mphspeed,label)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local truespeed = mphspeed
	if truespeed >= 55 and truespeed <= 65 then
		xPlayer.removeMoney(Config.Fine)
		-- MySQL.Async.execute('INSERT INTO billing (identifier, sender, target_type, target, label, amount) VALUES (@identifier, @sender, @target_type, @target, @label, @amount)',
		-- 	{
		-- 		['@identifier']  = identifier,
		-- 		['@sender']      = "Radar fixe",
		-- 		['@target_type'] = 'society',
		-- 		['@target']      = 'society_police',
		-- 		['@label']       = ("📸:plaque %s, %s km/h a la place de %s"):format(plate, kmhSpeed, maxSpeed),
		-- 		['@amount']      = amount
		-- 	}, function(rowsChanged)
		-- 		TriggerClientEvent('esx:showNotification', _source, "Votre voiture a été flashé.")
		-- 	end)
		-- PassMoneyBilling(source, 'society_police', label, tonumber(Config.Fine))	
	end
	if truespeed >= 65 and truespeed <= 75 then
		xPlayer.removeMoney(Config.Fine2)
		-- PassMoneyBilling(source, 'society_police', label, tonumber(Config.Fine2))	
	end
	if truespeed >= 75 and truespeed <= 85 then		
		xPlayer.removeMoney(Config.Fine3)
		-- PassMoneyBilling(source, 'society_police', label, tonumber(Config.Fine3))	
	end
	if truespeed >= 85 and truespeed <= 200 then
		xPlayer.removeMoney(Config.Fine4)		
		-- PassMoneyBilling(source, 'society_police', label, tonumber(Config.Fine4))	
	end
	CancelEvent()
end)

function PassMoneyBilling(_source,society,label,amount)
	TriggerServerEvent('esx_billing:sendBill', _source,society, label, tonumber(amount))	
end

