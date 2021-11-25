ESX              = nil
local PlayerData = {}

local silencers = {
	'COMPONENT_AT_PI_SUPP',
	'COMPONENT_AT_SR_SUPP',
	'COMPONENT_AT_AR_SUPP',
	'COMPONENT_AT_AR_SUPP_02',
	'COMPONENT_AT_PI_SUPP_02',
}	

local grips = {
	'COMPONENT_AT_AR_AFGRIP', -- Most Weapons 
	'COMPONENT_AT_AR_AFGRIP_02' -- MK2 Weapons

}

local flashlights = {
	'COMPONENT_AT_PI_FLSH', 
	'COMPONENT_AT_PI_FLSH_03',
	'COMPONENT_AT_PI_FLSH_02',
	'COMPONENT_AT_AR_FLSH'
}

local scopes = {
	'COMPONENT_AT_SCOPE_MACRO_MK2',
	'COMPONENT_AT_PI_RAIL_02',
	'COMPONENT_AT_SCOPE_MACRO',
	'COMPONENT_AT_SCOPE_MACRO_02',
	'COMPONENT_AT_SCOPE_MACRO_02_MK2',
	'COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2',
	'COMPONENT_AT_SCOPE_SMALL',
	'COMPONENT_AT_SCOPE_MEDIUM'
}
local magazines = {
	'COMPONENT_SMG_CLIP_03',
	'COMPONENT_MACHINEPISTOL_CLIP_03',
	'COMPONENT_COMBATPDW_CLIP_03',
	'COMPONENT_HEAVYSHOTGUN_CLIP_03',
	'COMPONENT_ASSAULTRIFLE_CLIP_03',
	'COMPONENT_CARBINERIFLE_CLIP_03',
	'COMPONENT_SPECIALCARBINE_CLIP_03',
	'COMPONENT_COMPACTRIFLE_CLIP_03'

}
local extended_clips = {
	'COMPONENT_PISTOL_CLIP_02',
	'COMPONENT_COMBATPISTOL_CLIP_02',
	'COMPONENT_APPISTOL_CLIP_02',
	'COMPONENT_PISTOL50_CLIP_02',
	'COMPONENT_SNSPISTOL_CLIP_02',
	'COMPONENT_HEAVYPISTOL_CLIP_02',
	'COMPONENT_SNSPISTOL_MK2_CLIP_02',
	'COMPONENT_PISTOL_MK2_CLIP_02',
	'COMPONENT_VINTAGEPISTOL_CLIP_02',
	'COMPONENT_MICROSMG_CLIP_02',
	'COMPONENT_ASSAULTSMG_CLIP_02',
	'COMPONENT_MINISMG_CLIP_02',
	'COMPONENT_SMG_MK2_CLIP_02',
	'COMPONENT_MACHINEPISTOL_CLIP_02',
	'COMPONENT_COMBATPDW_CLIP_02',
	'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
	'COMPONENT_HEAVYSHOTGUN_CLIP_02',
	'COMPONENT_ASSAULTRIFLE_CLIP_02',
	'COMPONENT_CARBINERIFLE_CLIP_02',
	'COMPONENT_ADVANCEDRIFLE_CLIP_02',
	'COMPONENT_SPECIALCARBINE_CLIP_02',
	'COMPONENT_BULLPUPRIFLE_CLIP_02',
	'COMPONENT_BULLPUPRIFLE_MK2_CLIP_02',
	'COMPONENT_SPECIALCARBINE_MK2_CLIP_02',
	'COMPONENT_ASSAULTRIFLE_MK2_CLIP_02',
	'COMPONENT_CARBINERIFLE_MK2_CLIP_02',
	'COMPONENT_COMPACTRIFLE_CLIP_02',
	'COMPONENT_MILITARYRIFLE_CLIP_02',
	'COMPONENT_MG_CLIP_02',
	'COMPONENT_COMBATMG_CLIP_02',
	'COMPONENT_COMBATMG_MK2_CLIP_02',
	'COMPONENT_GUSENBERG_CLIP_02',
	'COMPONENT_MARKSMANRIFLE_MK2_CLIP_02',
	'COMPONENT_HEAVYSNIPER_MK2_CLIP_02',
	'COMPONENT_MARKSMANRIFLE_CLIP_02'
	
}
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterNetEvent('components:useSilencer')
AddEventHandler('components:useSilencer', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #silencers, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(silencers[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(silencers[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(silencers[index]))
			TriggerServerEvent('components:removeItem', 'silencer')
			ESX.ShowNotification("Added silencer to weapon")
		else
			ESX.ShowNotification("Silencer already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a silencer")
	end
end)

RegisterNetEvent('components:useGrip')
AddEventHandler('components:useGrip', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #grips, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(grips[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(grips[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(grips[index]))
			TriggerServerEvent('components:removeItem', 'grip')
			ESX.ShowNotification("Added grip to weapon")
		else
			ESX.ShowNotification("Grip already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a grip")
	end
end)
RegisterNetEvent('components:useFlashlight')
AddEventHandler('components:useFlashlight', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #flashlights, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(flashlights[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(flashlights[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(flashlights[index]))
			TriggerServerEvent('components:removeItem', 'flashlight')
			ESX.ShowNotification("Added flashlight to weapon")
		else
			ESX.ShowNotification("Flashlight already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a flashlight")
	end
end)

RegisterNetEvent('components:useScope')
AddEventHandler('components:useScope', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #scopes, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(scopes[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(scopes[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(scopes[index]))
			TriggerServerEvent('components:removeItem', 'scope')
			ESX.ShowNotification("Added scope to weapon")
		else
			ESX.ShowNotification("Scope already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a scope")
	end
end)

RegisterNetEvent('components:useMagazine')
AddEventHandler('components:useMaganize', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #magazines, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(magazines[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(magazines[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(magazines[index]))
			TriggerServerEvent('components:removeItem', 'box_magazine')
			ESX.ShowNotification("Added magazine to weapon")
		else
			ESX.ShowNotification("Magazine already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a magazine")
	end
end)

RegisterNetEvent('components:useExtendedClip')
AddEventHandler('components:useExtendedClip', function()
	local ped = GetPlayerPed(-1)
	local found = false
	local index = 0
	currWea = GetSelectedPedWeapon(ped)
	for i= 1 , #extended_clips, 1 do
		if DoesWeaponTakeWeaponComponent(currWea,GetHashKey(extended_clips[i])) then
			found = true 
			index = i
			break 
		end 
	end
	if found then 
		if not HasPedGotWeaponComponent(ped, currWea ,GetHashKey(extended_clips[index])) then 
			GiveWeaponComponentToPed(ped, currWea, GetHashKey(extended_clips[index]))
			TriggerServerEvent('components:removeItem', 'extended_clip')
			ESX.ShowNotification("Added extended clip to weapon")
		else
			ESX.ShowNotification("Extended Clip already equiped")
		end
	else
		ESX.ShowNotification("This weapon does not take a extended clip")
	end
end)


