ESX = nil
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterCommand(Config.Commands.Ambulance, function(source, args, rawCommand)
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)

    ESX.TriggerServerCallback('bb_emcmds:checkHasPhone', function(hasphone)
        if hasphone then
            TriggerServerEvent('bb_emcmds:sendclients', "e", args, playerCoords)
        else
            TriggerEvent('Notification', "You dont have phone", 2) 
        end
    end)
end)

RegisterCommand(Config.Commands.Police, function(source, args, rawCommand)
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)

    ESX.TriggerServerCallback('bb_emcmds:checkHasPhone', function(hasphone)
        if hasphone then
            TriggerServerEvent('bb_emcmds:sendclients', "p", args, playerCoords)
        else
            TriggerEvent('Notification', "You dont have phone", 2) 
        end
    end)
end)

RegisterNetEvent('bb_emcmds:sendToEmergancy')
AddEventHandler('bb_emcmds:sendToEmergancy', function(typ, message, namee, coords)
    plyData = ESX.GetPlayerData()

    if plyData.job ~= nil and (plyData.job.name == "police" or plyData.job.name == "ambulance") then
        local blip
        if typ == "p" then
            blip = AddBlipForCoord(coords)
            SetBlipSprite(blip, 280)
            SetBlipScale(blip, 0.8)
            SetBlipColour(blip, 3)
            SetBlipAsShortRange(blip, false)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Police Call")
            EndTextCommandSetBlipName(blip)
            
            TriggerServerEvent('bb_emcmds:serverSend', '<div class="chat-message" style="background-color: rgba(59, 160, 255, 0.75);"><b>Emergency Call 911 | ' .. namee .. '</b> ' .. message .. '</div>')
        elseif typ == "e" then
            blip = AddBlipForCoord(coords)
            SetBlipSprite(blip, 280)
            SetBlipScale(blip, 0.8)
            SetBlipColour(blip, 1)
            SetBlipAsShortRange(blip, false)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Ambulance Call")
            EndTextCommandSetBlipName(blip)

            TriggerServerEvent('bb_emcmds:serverSend', '<div class="chat-message" style="background-color: rgba(255, 59, 62, 0.75);"><b>Emergency Call 311 | ' .. namee .. '</b> ' .. message .. '</div>')
        end
        TriggerEvent("InteractSound_CL:PlayOnOne","demo",0.4)

        Citizen.Wait(300000)
        RemoveBlip(blip)
    end
end)