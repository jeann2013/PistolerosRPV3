ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_moneywash:withdraw')
AddEventHandler('esx_moneywash:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	amount = tonumber(amount)
	local accountMoney = 0
	accountMoney = xPlayer.getAccount('black_money').money
	if amount == nil or amount <= 0 or amount > accountMoney then
		TriggerClientEvent('esx:showNotification', _source, _U('invalid_amount'))
	else
		xPlayer.removeAccountMoney('black_money', amount)
		local amountDescount = (amount * Config.Percentage)
		xPlayer.addMoney(amount - amountDescount)
		TriggerClientEvent('esx:showNotification', _source, _U('wash_money') .. amount - amountDescount .. '~s~.')
		TriggerClientEvent('esx_moneywash:closeWASH', _source)
	end
end)