ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)        
        Wait(0)
	end
end)

--This makes players incapable of carjacking vehicles w/ npc's inside.
--just comment out this if you don't need / want this feature
---------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId(ped))) then
            local veh = GetVehiclePedIsTryingToEnter(PlayerPedId(ped))
            local lock = GetVehicleDoorLockStatus(veh)
            if lock == 7 then
                SetVehicleDoorsLocked(veh, 2)
            end
            local pedd = GetPedInVehicleSeat(veh, -1)
            if pedd then
                SetPedCanBeDraggedOut(pedd, false)
            end
        end
    end
 end)
-----------------------------------------------------------------------------------

local locked = false
RegisterNetEvent('s_lockpick:startlockpicking')
AddEventHandler('s_lockpick:startlockpicking', function()
   
    local ped = PlayerPedId()
    local pedc = GetEntityCoords(ped)
    local closeveh = GetClosestVehicle(pedc.x, pedc.y, pedc.z, 5.0, 0 ,71)
    local lockstatus = GetVehicleDoorLockStatus(closeveh)
    local distance = #(GetEntityCoords(closeveh) - pedc)        
    if distance < 3 then
        if lockstatus == 2 then            
            TriggerEvent('s_lockpick:client:openLockpick', lockpick)                      
            ESX.ShowNotification('Usa [A / D] y [Mouse] para forzar el auto')            
            SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"),true)
            FreezeEntityPosition(PlayerPedId(), true)
        else
            ESX.ShowNotification('El vehículo no está cerrado')
        end
    else
        ESX.ShowNotification('No estas cerca de un vehiculo')
    end
end)

function lockpick(success)
    ped = PlayerPedId()
    pedc = GetEntityCoords(ped)
    local veh = GetClosestVehicle(pedc.x, pedc.y, pedc.z, 3.0, 0, 71)    
    if success then        
        Citizen.Wait(1000)        
        Citizen.Wait(500)
        ClearPedTasks(PlayerPedId())
        FreezeEntityPosition(PlayerPedId(), false)
        ESX.ShowNotification('Cachariastes el auto, Llevatelo Tio!!')
        SetVehicleDoorsLocked(veh, 0)
        SetVehicleDoorsLockedForAllPlayers(veh, false)        
    else
        ClearPedTasks(PlayerPedId())
        ESX.ShowNotification('El bloqueo de la ganzúa falló, las alarmas de los vehículos se dispararon')
        FreezeEntityPosition(PlayerPedId(), false)
        SetVehicleAlarm(veh, true)
        SetVehicleAlarmTimeLeft(veh, 4000)
        SetVehicleDoorsLocked(veh, 2)        
    end
end

RegisterNetEvent('notifyc')
AddEventHandler('notifyc', function()    
    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
    local streetName, crossing = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
    local streetName, crossing = GetStreetNameAtCoord(x, y, z)
    streetName = GetStreetNameFromHashKey(streetName)
	crossing = GetStreetNameFromHashKey(crossing)
	
    if crossing ~= nil then

      local coords      = GetEntityCoords(GetPlayerPed(-1))

      TriggerServerEvent('esx_phone:send', "police", "Algún sospechoso está forzando un auto para robarlo " .. streetName .. " y " .. crossing, true, {
        x = coords.x,
        y = coords.y,
        z = coords.z
      })
    else
      TriggerServerEvent('esx_phone:send', "police", "Algún sospechoso está forzando un auto para robarlo " .. streetName, true, {
        x = coords.x,
        y = coords.y,
        z = coords.z
      })
    end
end)
