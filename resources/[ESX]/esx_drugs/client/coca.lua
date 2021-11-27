local spawnedAmapola = 0
local amapolaPlants = {}
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		local coords = GetEntityCoords(PlayerPedId())
		if GetDistanceBetweenCoords(coords, Config.CircleZones.CocaField.coords, true) < 50 then
			SpawnAmapolaPlants()
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.CocaProcessing.coords, true) < 1 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('coca_processprompt'))
			end

			if IsControlJustReleased(0, 38) and not isProcessing then
				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							ProcessCoca()
						else
							OpenBuyLicenseMenu('coca_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'coca_processing')
				else
					ESX.TriggerServerCallback('esx_drugs:resina_count', function(xResina)
						if(xResina == nil) then
							xResina = 0;
						end
						ProcessCoca(xResina)
					end)

				end
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function ProcessCoca(xResina)
	isProcessing = true
	ESX.ShowNotification(_U('coca_processingstarted'))
	TriggerServerEvent('esx_drugs:processResina')
	if(xResina<3) then
		xResina=0
	end
	local timeLeft = (Config.Delays.CocaProcessing * xResina) / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.CocaProcessing.coords, false) > 4 then
			ESX.ShowNotification(_U('coca_processingtoofar'))
			TriggerServerEvent('esx_drugs:cancelProcessingCoca')
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

		for i=1, #amapolaPlants, 1 do
			if GetDistanceBetweenCoords(coords, GetEntityCoords(amapolaPlants[i]), false) < 1 then
				nearbyObject, nearbyID = amapolaPlants[i], i
			end
		end

		if nearbyObject and IsPedOnFoot(playerPed) then
			if not isPickingUp then
				ESX.ShowHelpNotification(_U('coca_pickupprompt'))
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

						table.remove(amapolaPlants, nearbyID)
						spawnedAmapola = spawnedAmapola - 1

						TriggerServerEvent('esx_drugs:pickedUpAmapola')
					else
						ESX.ShowNotification(_U('coca_inventoryfull'))
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
		for k, v in pairs(amapolaPlants) do
			ESX.Game.DeleteObject(v)
		end
	end
end)

function SpawnAmapolaPlants()
	while spawnedAmapola < 70 do
		Citizen.Wait(0)
		local cocaCoords = GenerateCocaCoords()

		ESX.Game.SpawnLocalObject('prop_cs_plant_01', cocaCoords, function(obj)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)

			table.insert(amapolaPlants, obj)
			spawnedAmapola = spawnedAmapola + 1
		end)
	end
end

function ValidateCocaCoord(plantCoord)
	if spawnedAmapola > 0 then
		local validate = true

		for k, v in pairs(amapolaPlants) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate = false
			end
		end

		if GetDistanceBetweenCoords(plantCoord, Config.CircleZones.CocaField.coords, false) > 50 then
			validate = false
		end

		return validate
	else
		return true
	end
end


function GenerateCocaCoords()
	while true do
		Citizen.Wait(1)

		local cocaCoordX, cocaCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-90, 90)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-90, 90)

		cocaCoordX = Config.CircleZones.CocaField.coords.x + modX
		cocaCoordY = Config.CircleZones.CocaField.coords.y + modY

		local coordZ = GetCoordZ(cocaCoordX, cocaCoordY)
		local coord = vector3(cocaCoordX, cocaCoordY, coordZ)

		if ValidateCocaCoord(coord) then
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
