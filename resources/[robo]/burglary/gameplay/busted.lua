RegisterNetEvent("burglary:finished")

CreateThread(function()
	while true do
		Wait(0)

		local door = doors[lastDoor].coords

		-- if time is up
		if TimeToSeconds(GetClockTime()) > TimeToSeconds(5, 30, 0) and onMission then
			-- if still in the house
			if GetCurrentHouse() then
				-- mission failed we'll get em next time
				ShowMPMessage("~r~Robo fallido", "No saliste de casa antes del amanecer.", 3500)
				TriggerServerEvent("burglary:ended", true, true, lastDoor, GetStreet(door.x, door.y, door.z))
			else
				-- player made it before time
				TriggerServerEvent("burglary:ended", false)
			end

			ForceEndMission()
		end

		if onMission then
			if CanPedHearPlayer(PlayerId(), peds[1]) then
				ShowMPMessage("~r~Robo fallido", "Despertaste al residente idiota!.", 3500)
				TriggerServerEvent("burglary:ended", true, true, lastDoor, GetStreet(door.x, door.y, door.z))

				ClearPedTasks(peds[1])
				PlayPain(peds[1], 7, 0)

				-- if resident is aggresive
				if HasPedGotWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), false) then
					SetCurrentPedWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), true)

					TaskShootAtEntity(peds[1], PlayerPedId(), -1, 2685983626)
				end

				ForceEndMission()
			end
		end

		if IsPedCuffed(PlayerPedId()) and onMission then
			ShowMPMessage("~r~Robo fallido", "Haz sido arrestado", 3500)
			TriggerServerEvent("burglary:ended", true, false)

			ForceEndMission()
		end

		-- cancel mission if player is dead
		if IsPedDeadOrDying(PlayerPedId()) then
			TriggerServerEvent("burglary:ended", true, false)

			ForceEndMission()
		end

		-- check if van is not destroyed
		--[[if IsEntityDead(currentVan) and onMission then
			ShowMPMessage("~r~Robo fallido", "tu van fue destrozada!.", 3500)
			TriggerServerEvent("burglary:ended", true, false)

			ForceEndMission()
		end]]--
	end
end)

function ForceEndMission()
	if isHolding then
		DetachEntity(holdingProp)
	end

	-- lot of cleanup
	isHolding = false
	holdingProp = nil

	stolenItems = {}
	currentItem = {}

	-- reset anim
	ClearPedTasks(PlayerPedId())
	SetPedCanSwitchWeapon(PlayerPedId(), not isHolding)

	onMission = false
	SetVehicleAsNoLongerNeeded(NetToVeh(currentVan))

	RemoveBlips()
	RemovePickups()
end

AddEventHandler("burglary:finished", function(sum)
	ShowMPMessage("~g~Robo exitoso", "Vendiste todos los articulos por $" .. sum, 3500)
end)
