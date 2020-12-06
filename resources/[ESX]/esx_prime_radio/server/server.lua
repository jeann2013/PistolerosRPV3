
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- Code

ESX.RegisterUsableItem("radio", function(source, item)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerClientEvent('prime_radio:use', source)
end)

RegisterServerEvent("prime_radio:Getitem");
AddEventHandler('prime_radio:server:GetItem', function(source, cb, item)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
  if xPlayer ~= nil then 
    local RadioItem = xPlayer.getInventoryItem('radio')
    if RadioItem ~= nil then
      cb(true)
    else
      cb(false)
    end
  else
    cb(false)
  end
end)