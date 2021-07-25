local spawnedPeyota = 0
local peyotaPlants = {}
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local coords = GetEntityCoords(PlayerPedId())
		if GetDistanceBetweenCoords(coords, Config.CircleZones.MethaField.coords, true) < 50 then
			SpawnAdormideraPlants()
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.MethaProcessing.coords, true) < 1 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('metha_processprompt'))
			end

			if IsControlJustReleased(0, 38) and not isProcessing then
				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							ProcessMetha()
						else
							OpenBuyLicenseMenu('metha_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'metha_processing')
				else
					ESX.TriggerServerCallback('esx_drugs:peyote_count', function(xResina)
						ProcessMetha(xResina)
					end)

				end
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function ProcessMetha(xResina)
	isProcessing = true
	ESX.ShowNotification(_U('metha_processingstarted'))
	TriggerServerEvent('esx_drugs:processPeyote')
	if(xResina<3) then
		xResina=0
	end
	local timeLeft = (Config.Delays.MethaProcessing * xResina) / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.MethaProcessing.coords, false) > 4 then
			ESX.ShowNotification(_U('metha_processingtoofar'))
			TriggerServerEvent('esx_drugs:CancelProcessingMetha')
			TriggerServerEvent('esx_drugs:outofbound')
			break
		end
		print('timeLeft',timeLeft);
	end

	isProcessing = false
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local nearbyObject, nearbyID

		for i=1, #peyotaPlants, 1 do
			if GetDistanceBetweenCoords(coords, GetEntityCoords(peyotaPlants[i]), false) < 1 then
				nearbyObject, nearbyID = peyotaPlants[i], i
			end
		end

		if nearbyObject and IsPedOnFoot(playerPed) then
			if not isPickingUp then
				ESX.ShowHelpNotification(_U('metha_pickupprompt'))
			end

			if IsControlJustReleased(0, 38) and not isPickingUp then
				isPickingUp = true

				ESX.TriggerServerCallback('esx_drugs:canPickUp', function(canPickUp)
					if canPickUp then
						TaskStartScenarioInPlace(playerPed, 'world_human_gardener_plant', 0, false)

						Citizen.Wait(2000)
						ClearPedTasks(playerPed)
						Citizen.Wait(1500)

						ESX.Game.DeleteObject(nearbyObject)

						table.remove(peyotaPlants, nearbyID)
						spawnedPeyota = spawnedPeyota - 1

						TriggerServerEvent('esx_drugs:pickedUpPeyote')
					else
						ESX.ShowNotification(_U('metha_inventoryfull'))
					end

					isPickingUp = false
				end, 'resina')
			end
		else
			Citizen.Wait(500)
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(peyotaPlants) do
			ESX.Game.DeleteObject(v)
		end
	end
end)

function SpawnAdormideraPlants()
	while spawnedPeyota < 70 do
		Citizen.Wait(0)
		local methaCoords = GenerateMethaCoords()

		ESX.Game.SpawnLocalObject('prop_cactus_02', methaCoords, function(obj)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)

			table.insert(peyotaPlants, obj)
			spawnedPeyota = spawnedPeyota + 1
		end)
	end
end

function ValidateMethaCoord(plantCoord)
	if spawnedPeyota > 0 then
		local validate = true

		for k, v in pairs(peyotaPlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end

		if GetDistanceBetweenCoords(plantCoord, Config.CircleZones.MethaField.coords, false) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end


function GenerateMethaCoords()
	while true do
		Citizen.Wait(1)

		local cocaCoordX, cocaCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-90, 90)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-90, 90)

		cocaCoordX = Config.CircleZones.MethaField.coords.x + modX
		cocaCoordY = Config.CircleZones.MethaField.coords.y + modY

		local coordZ = GetCoordZ(cocaCoordX, cocaCoordY)
		local coord = vector3(cocaCoordX, cocaCoordY, coordZ)

		if ValidateMethaCoord(coord) then
			return coord
		end
	end
end

function GetCoordZ(x, y)
	local groundCheckHeights = { 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.0, 56.0, 57.0, 58.0 }

	for i, height in ipairs(groundCheckHeights) do
		local foundGround, z = GetGroundZFor_3dCoord(x, y, height)

		if foundGround then
			return z
		end
	end

	return 43.0
end
