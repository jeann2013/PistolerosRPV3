ESX = nil
Citizen.CreateThread(function()
	while true do
		Wait(5)
		if ESX ~= nil then
		
		else
			ESX = nil
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		end
	end
end)

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local fishing = false
local lastInput = 0
local pause = false
local pausetimer = 0
local correct = 0

local bait = "none"

local blip = AddBlipForCoord(Config.SellFish.x, Config.SellFish.y, Config.SellFish.z)

			SetBlipSprite (blip, 356)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 1.1)
			SetBlipColour (blip, 17)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de pescado")
			EndTextCommandSetBlipName(blip)
			
local blip2 = AddBlipForCoord(Config.SellTurtle.x, Config.SellTurtle.y, Config.SellTurtle.z)

			SetBlipSprite (blip2, 68)
			SetBlipDisplay(blip2, 4)
			SetBlipScale  (blip2, 0.9)
			SetBlipColour (blip2, 49)
			SetBlipAsShortRange(blip2, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de tortuga")
			EndTextCommandSetBlipName(blip2)
			
local blip3 = AddBlipForCoord(Config.SellShark.x, Config.SellShark.y, Config.SellShark.z)

			SetBlipSprite (blip3, 68)
			SetBlipDisplay(blip3, 4)
			SetBlipScale  (blip3, 0.9)
			SetBlipColour (blip3, 49)
			SetBlipAsShortRange(blip3, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de Tiburon")
			EndTextCommandSetBlipName(blip3)

local blip4 = AddBlipForCoord(Config.SellSharkTiger.x, Config.SellSharkTiger.y, Config.SellSharkTiger.z)

			SetBlipSprite (blip4, 68)
			SetBlipDisplay(blip4, 4)
			SetBlipScale  (blip4, 0.9)
			SetBlipColour (blip4, 49)
			SetBlipAsShortRange(blip4, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de tiburon tigre")
			EndTextCommandSetBlipName(blip4)			

local blip5 = AddBlipForCoord(Config.SellStingrey.x, Config.SellStingrey.y, Config.SellStingrey.z)

			SetBlipSprite (blip5, 68)
			SetBlipDisplay(blip5, 4)
			SetBlipScale  (blip5, 0.9)
			SetBlipColour (blip5, 49)
			SetBlipAsShortRange(blip5, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de carne de Matarraya")
			EndTextCommandSetBlipName(blip5)

local blip6 = AddBlipForCoord(Config.SellDolphin.x, Config.SellDolphin.y, Config.SellDolphin.z)

			SetBlipSprite (blip6, 68)
			SetBlipDisplay(blip6, 4)
			SetBlipScale  (blip6, 0.9)
			SetBlipColour (blip6, 49)
			SetBlipAsShortRange(blip6, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de carne de Delfin")
			EndTextCommandSetBlipName(blip6)

local blip7 = AddBlipForCoord(Config.SellKillerWhale.x, Config.SellKillerWhale.y, Config.SellKillerWhale.z)

			SetBlipSprite (blip7, 68)
			SetBlipDisplay(blip7, 4)
			SetBlipScale  (blip7, 0.9)
			SetBlipColour (blip7, 49)
			SetBlipAsShortRange(blip7, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de carne de Orca")
			EndTextCommandSetBlipName(blip7)			

local blip8 = AddBlipForCoord(Config.SellSharkHammer.x, Config.SellSharkHammer.y, Config.SellSharkHammer.z)

			SetBlipSprite (blip8, 68)
			SetBlipDisplay(blip8, 4)
			SetBlipScale  (blip8, 0.9)
			SetBlipColour (blip8, 49)
			SetBlipAsShortRange(blip8, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Venta de carne de tiburon martillo")
			EndTextCommandSetBlipName(blip8)

local blip9 = AddBlipForCoord(Config.CreateCevicheIllegal.x, Config.CreateCevicheIllegal.y, Config.CreateCevicheIllegal.z)

			SetBlipSprite (blip9, 68)
			SetBlipDisplay(blip9, 0)
			SetBlipScale  (blip9, 0.9)
			SetBlipColour (blip9, 32)
			SetBlipAsShortRange(blip9, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Punto de creacion de ceviche ilegal")
			EndTextCommandSetBlipName(blip9)

local blip10 = AddBlipForCoord(Config.CreateWeaponllegal.x, Config.CreateWeaponllegal.y, Config.CreateWeaponllegal.z)

			SetBlipSprite (blip10, 68)
			SetBlipDisplay(blip10, 0)
			SetBlipScale  (blip10, 0.9)
			SetBlipColour (blip10, 32)
			SetBlipAsShortRange(blip10, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Punto de creacion de armas ilegales")
			EndTextCommandSetBlipName(blip10)

local blip11 = AddBlipForCoord(Config.CreateWeaponllegal.x, Config.CreateWeaponllegal.y, Config.CreateWeaponllegal.z)

			SetBlipSprite (blip11, 68)
			SetBlipDisplay(blip11, 0)
			SetBlipScale  (blip11, 0.9)
			SetBlipColour (blip11, 32)
			SetBlipAsShortRange(blip11, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Punto de compra de chatarra")
			EndTextCommandSetBlipName(blip11)			
			
for _, info in pairs(Config.MarkerZones) do
		info.blip = AddBlipForCoord(info.x, info.y, info.z)
		SetBlipSprite(info.blip, 455)
		SetBlipDisplay(info.blip, 4)
		SetBlipScale(info.blip, 1.0)
		SetBlipColour(info.blip, 20)
		SetBlipAsShortRange(info.blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Alquiler de Bote")
		EndTextCommandSetBlipName(info.blip)
	end
	
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(Config.MarkerZones) do
		
            DrawMarker(1, Config.MarkerZones[k].x, Config.MarkerZones[k].y, Config.MarkerZones[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 0, 150, 150, 100, 0, 0, 0, 0)	
		end
    end
end)
			
function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
Citizen.CreateThread(function()
while true do
	Wait(600)
		if pause and fishing then
			pausetimer = pausetimer + 1
		end
end
end)
Citizen.CreateThread(function()
	while true do
		Wait(50)
		if fishing then
			if IsControlJustReleased(0, Keys['1']) then
				 input = 1
			end
			if IsControlJustReleased(0, Keys['2']) then
				input = 2
			end
			if IsControlJustReleased(0, Keys['3']) then
				input = 3
			end
			if IsControlJustReleased(0, Keys['4']) then
				input = 4
			end
			if IsControlJustReleased(0, Keys['5']) then
				input = 5
			end
			if IsControlJustReleased(0, Keys['6']) then
				input = 6
			end
			if IsControlJustReleased(0, Keys['7']) then
				input = 7
			end
			if IsControlJustReleased(0, Keys['8']) then
				input = 8
			end
			
			
			if IsControlJustReleased(0, Keys['X']) then
				fishing = false
				ESX.ShowNotification("~r~Parastes de pezcar")
			end
			if fishing then
			
				playerPed = GetPlayerPed(-1)
				local pos = GetEntityCoords(GetPlayerPed(-1))
				if pos.y >= 7700 or pos.y <= -4000 or pos.x <= -3700 or pos.x >= 4300 or IsPedInAnyVehicle(GetPlayerPed(-1)) then
					
				else
					fishing = false
					ESX.ShowNotification("~r~Parastes de pezcar")
				end
				if IsEntityDead(playerPed) or IsEntityInWater(playerPed) then
					ESX.ShowNotification("~r~Parastes de pezcar")
				end
			end
			
			
			
			if pausetimer > 3 then
				input = 99
			end
			
			if pause and input ~= 0 then
				pause = false
				if input == correct then
					TriggerServerEvent('fishing:catch', bait)
				else
					ESX.ShowNotification("~r~El pez se escapo")
				end
			end
		end

		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellFish.x, Config.SellFish.y, Config.SellFish.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "fish")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellShark.x, Config.SellShark.y, Config.SellShark.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "shark")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellTurtle.x, Config.SellTurtle.y, Config.SellTurtle.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "turtle")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellSharkTiger.x, Config.SellSharkTiger.y, Config.SellSharkTiger.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "sharktiger")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellStingrey.x, Config.SellStingrey.y, Config.SellStingrey.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "stingray")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellDolphin.x, Config.SellDolphin.y, Config.SellDolphin.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "dolphin")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellKillerWhale.x, Config.SellKillerWhale.y, Config.SellKillerWhale.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "killerwhale")
			Citizen.Wait(4000)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.SellSharkHammer.x, Config.SellSharkHammer.y, Config.SellSharkHammer.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "sharkhammer")
			Citizen.Wait(4000)
		end		

		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.CreateWeaponllegal.x, Config.CreateWeaponllegal.y, Config.CreateWeaponllegal.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "weapon")
			Citizen.Wait(4000)
		end		

		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.CreateChatarra.x, Config.CreateChatarra.y, Config.CreateChatarra.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "chatarra")
			Citizen.Wait(4000)
		end		

		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), Config.CreateWeaponWhite.x, Config.CreateWeaponWhite.y, Config.CreateWeaponWhite.z, true) <= 3 then
			TriggerServerEvent('fishing:startSelling', "weapon_white")
			Citizen.Wait(4000)
		end		
		
	end
end)


				
Citizen.CreateThread(function()
	-- while true do
	-- 	Wait(100)
		
		DrawMarker(1, Config.SellFish.x, Config.SellFish.y, Config.SellFish.z , 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellTurtle.x, Config.SellTurtle.y, Config.SellTurtle.z , 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellShark.x, Config.SellShark.y, Config.SellShark.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellSharkTiger.x, Config.SellSharkTiger.y, Config.SellSharkTiger.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellStingrey.x, Config.SellStingrey.y, Config.SellStingrey.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellDolphin.x, Config.SellDolphin.y, Config.SellDolphin.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellKillerWhale.x, Config.SellKillerWhale.y, Config.SellKillerWhale.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.SellSharkHammer.x, Config.SellSharkHammer.y, Config.SellSharkHammer.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.CreateWeaponllegal.x, Config.CreateWeaponllegal.y, Config.CreateWeaponllegal.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.CreateChatarra.x, Config.CreateChatarra.y, Config.CreateChatarra.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
		DrawMarker(1, Config.CreateWeaponWhite.x, Config.CreateWeaponWhite.y, Config.CreateWeaponWhite.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 2.0, 0, 70, 250, 30, false, true, 2, false, false, false, false)
	--end
end)

Citizen.CreateThread(function()
	while true do
		local wait = math.random(Config.FishTime.a , Config.FishTime.b)
		Wait(wait)
			if fishing then
				pause = true
				correct = math.random(1,8)
				ESX.ShowNotification("~g~El pez está mordiendo el anzuelo \n ~h~Presiona " .. correct .. " para capturarlo")
				input = 0
				pausetimer = 0
			end
			
	end
end)

RegisterNetEvent('fishing:message')
AddEventHandler('fishing:message', function(message)
	ESX.ShowNotification(message)
end)
RegisterNetEvent('fishing:break')
AddEventHandler('fishing:break', function()
	fishing = false
	ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent('fishing:spawnPed')
AddEventHandler('fishing:spawnPed', function()
	
	RequestModel( GetHashKey( "A_C_SharkTiger" ) )
		while ( not HasModelLoaded( GetHashKey( "A_C_SharkTiger" ) ) ) do
			Citizen.Wait( 1 )
		end
	local pos = GetEntityCoords(GetPlayerPed(-1))
	
	local ped = CreatePed(29, 0x06C3F072, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
end)

RegisterNetEvent('fishing:setbait')
AddEventHandler('fishing:setbait', function(bool)
	bait = bool	
end)

RegisterNetEvent('fishing:fishstart')
AddEventHandler('fishing:fishstart', function()
	
	
	
	playerPed = GetPlayerPed(-1)
	local pos = GetEntityCoords(GetPlayerPed(-1))	
	if IsPedInAnyVehicle(playerPed) then
		ESX.ShowNotification("~y~No se puede pescar desde un vehículo")
	else
		if pos.y >= 7700 or pos.y <= -4000 or pos.x <= -3700 or pos.x >= 4300 then
			ESX.ShowNotification("~g~Pesca iniciada")
			TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_STAND_FISHING", 0, true)
			fishing = true
		else
			ESX.ShowNotification("~y~Necesitas alejarte más de la orilla")
		end
	end
	
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
	
        for k in pairs(Config.MarkerZones) do
        	local ped = PlayerPedId()
            local pedcoords = GetEntityCoords(ped, false)
            local distance = Vdist(pedcoords.x, pedcoords.y, pedcoords.z, Config.MarkerZones[k].x, Config.MarkerZones[k].y, Config.MarkerZones[k].z)
            if distance <= 1.40 then

					DisplayHelpText('Presiona E para alquilar un bote')
					
					if IsControlJustPressed(0, Keys['E']) and IsPedOnFoot(ped) then
						OpenBoatsMenu(Config.MarkerZones[k].xs, Config.MarkerZones[k].ys, Config.MarkerZones[k].zs)
					end 
			elseif distance < 1.45 then
				ESX.UI.Menu.CloseAll()
            end
        end
    end
end)

RegisterNetEvent('sharktiger:spawnPed')
AddEventHandler('sharktiger:spawnPed', function()
	RequestTheModel("A_C_SharkTiger")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `A_C_SharkTiger`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`A_C_SharkTiger`)
	Wait(10000)
    DeleteEntity(ped)
end)

RegisterNetEvent('killerwhale:spawnPed')
AddEventHandler('killerwhale:spawnPed', function()
	RequestTheModel("A_C_KillerWhale")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `A_C_KillerWhale`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`A_C_KillerWhale`)
	Wait(10000)
    DeleteEntity(ped)
end)

RegisterNetEvent('stingray:spawnPed')
AddEventHandler('stingray:spawnPed', function()
	RequestTheModel("A_C_stingray")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `A_C_stingray`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`A_C_stingray`)
	Wait(10000)
	DeleteEntity(ped)
end)

RegisterNetEvent('sharkhammer:spawnPed')
AddEventHandler('sharkhammer:spawnPed', function()
	RequestTheModel("A_C_sharkhammer")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `A_C_sharkhammer`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`A_C_sharkhammer`)
	Wait(10000)
        DeleteEntity(ped)
end)

RegisterNetEvent('dolphin:spawnPed')
AddEventHandler('dolphin:spawnPed', function()
	RequestTheModel("A_C_dolphin")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `A_C_dolphin`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`A_C_dolphin`)
	Wait(10000)
        DeleteEntity(ped)
end)

RegisterNetEvent('fish:spawnPed')
AddEventHandler('fish:spawnPed', function()
	RequestTheModel("a_c_fish")
	local pos = GetEntityCoords(PlayerPedId())
	local ped = CreatePed(29, `a_c_fish`, pos.x, pos.y, pos.z, 90.0, true, false)
	SetEntityHealth(ped, 0)
	DecorSetInt(ped, "propHack", 74)
	SetModelAsNoLongerNeeded(`a_c_fish`)
	Wait(10000)
    DeleteEntity(ped)
end)

function OpenBoatsMenu(x, y , z)
	local ped = PlayerPedId()
	PlayerData = ESX.GetPlayerData()
	local elements = {}
	
	
		table.insert(elements, {label = '<span style="color:green;">Dinghy</span> <span style="color:red;">2500$</span>', value = 'boat'})
		table.insert(elements, {label = '<span style="color:green;">Suntrap</span> <span style="color:red;">3500$</span>', value = 'boat6'}) 
		table.insert(elements, {label = '<span style="color:green;">Jetmax</span> <span style="color:red;">4500$</span>', value = 'boat5'}) 	
		table.insert(elements, {label = '<span style="color:green;">Toro</span> <span style="color:red;">5500$</span>', value = 'boat2'}) 
		table.insert(elements, {label = '<span style="color:green;">Marquis</span> <span style="color:red;">6000$</span>', value = 'boat3'}) 
		table.insert(elements, {label = '<span style="color:green;">Tug boat</span> <span style="color:red;">7500$</span>', value = 'boat4'})
		
	--If user has police job they will be able to get free Police Predator boat
	if PlayerData.job.name == "police" then
		table.insert(elements, {label = '<span style="color:green;">Bote de polica depredador</span>', value = 'police'})
	end
	
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'client',
    {
		title    = 'Alquiler de botes',
		align    = 'bottom-right',
		elements = elements,
    },
	
	
	function(data, menu)

	if data.current.value == 'boat' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 2500) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 2500)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "dinghy4")
	end
	
	if data.current.value == 'boat2' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 5500) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 5500)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "TORO")
	end
	
	if data.current.value == 'boat3' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 6000) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 6000)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "MARQUIS")
	end

	if data.current.value == 'boat4' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 7500) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 7500)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "tug")
	end
	
	if data.current.value == 'boat5' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 4500) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 4500)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "jetmax")
	end
	
	if data.current.value == 'boat6' then
		ESX.UI.Menu.CloseAll()

		TriggerServerEvent("fishing:lowmoney", 3500) 
		TriggerEvent("chatMessage", 'Alquilastes un bote por ', {255,0,255}, '$' .. 3500)
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "suntrap")
	end
	
	
	if data.current.value == 'police' then
		ESX.UI.Menu.CloseAll()

		TriggerEvent("chatMessage", 'Tomastes un bote')
		SetPedCoordsKeepVehicle(ped, x, y , z)
		TriggerEvent('esx:spawnVehicle', "predator")
	end
	ESX.UI.Menu.CloseAll()
	

    end,
	function(data, menu)
		menu.close()
		end
	)
end

function RequestTheModel(model)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
end