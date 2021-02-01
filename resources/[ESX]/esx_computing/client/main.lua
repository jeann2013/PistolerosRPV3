-- #ESX_COMPUTING v1.0 / By: jgTrue & Sergynano

local PlayerData                = {}
ESX                             = nil

local blip1 = {}
local blips = true
local blipActive = true
local isInService = false
local recogerActive = false
local herramientasActive = false
local repararActive = false
local Positions = {
    ['Spawnveh'] = { ['hint'] = '[E] para sacar un vehiculo', ['x'] = -1060.43, ['y'] = -226.57, ['z'] = 33.36 },
    ['SpawnCAR'] = { ['x'] = -1067.01, ['y'] = -232.6, ['z'] = 33.36 }
}

local dejarveh = false
local LFIcar = nil
local testActive = false
local firstspawn = false
local recogida = 0
local timer = 0
local rnd = math.random(1,27)
local locations = {

---PUNTOS DE RECOGIDA DE EQUIPOS ESTROPEADOS // DOCK COMPUTER ROOM
-- { ['x'] =566.26,  ['y'] = -3124.68 , ['z'] = 18.77},
-- { ['x'] =570.74,  ['y'] = -3123.43 , ['z'] = 18.77},
-- { ['x'] =574.12,  ['y'] = -3124.16 , ['z'] = 18.77},
-- { ['x'] = 565.58,  ['y'] = -3121.65,  ['z'] = 18.77},
-- { ['x'] = 562.55,  ['y'] = -3124.34,  ['z'] = 18.77},
{['x']=550.17,['y']=3117.92,['z']= 18.71},
{['x']=99.84,['y']=6620.21,['z']=32.44},
{['x']=-332.06,['y']=-120.30,['z']=39.01},
{['x']=233.87,['y']=220.07,['z']=110.28},
{['x']=96.44,['y']=-1291.67,['z']=29.27},
{['x']=447.15,['y']=-975.55,['z']=30.69},
{['x']=1159.54,['y']=-316.59,['z']=69.21},
{['x']=1959.19,['y']=3748.82,['z']=32.34},
{['x']=2549.01,['y']=384.19,['z']=108.62},
{['x']=2549.01,['y']=384.19,['z']=108.62},
{['x']=-1827.76,['y']=796.68,['z']=138.19},
{['x']=1706.03,['y']=4922.17,['z']=42.06},
{['x']=1734.50,['y']=6420.95,['z']=35.04},
{['x']=-1827.76,['y']=796.67,['z']=138.19},
{['x']=-45.10,['y']=-1750.18,['z']=29.42},
{['x']=-3047.75,['y']=586.31,['z']=7.91},
{['x']=-3249.82,['y']=1005.02,['z']=12.83},
---AGNADIR OTRAS UBICACIONES
--{ ['x'] = 2947.37,  ['y'] = 2766.84,  ['z'] = 18.77},
--{ ['x'] = 2971.29,  ['y'] = 2776.11,  ['z'] = 38.31},
--{ ['x'] =2967.93,  ['y'] = 2774.54,  ['z'] = 38.31},
--{ ['x'] =2977.62,  ['y'] = 2791.22,  ['z'] = 40.64},
--{ ['x'] =2971.05,  ['y'] = 2799.05,  ['z'] = 41.43},
--{ ['x'] =2937.0,  ['y'] = 2773.62,  ['z'] = 39.21},
--{ ['x'] =2926.92,  ['y'] = 2790.57,  ['z'] = 40.27},
--{ ['x'] =2929.76,  ['y'] = 2787.01,  ['z'] = 39.57},
--{ ['x'] =2920.2,  ['y'] = 2799.06,  ['z'] = 41.18},
}

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(10)
    end
    
    ScriptLoaded()
end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterNetEvent("esxJS:cogerherramientas")
AddEventHandler("esxJS:cogerherramientas", function()
    Herrami()
end)

RegisterNetEvent("esxJS:recogerequipo")
AddEventHandler("esxJS:recogerequipo", function()
    Recoger()
end)


RegisterNetEvent("esxJS:reparacion")
AddEventHandler("esxJS:reparacion", function()
    reparaciones()
end)

RegisterNetEvent("esxJS:test")
AddEventHandler("esxJS:test", function()
    Testing()


end)

RegisterNetEvent('esxJS:Temporizador')
AddEventHandler('esxJS:Temporizador', function()
    local timer = 0
    local ped = PlayerPedId()
    
    Citizen.CreateThread(function()
		while timer > -1 do
			Citizen.Wait(150)

			if timer > -1 then
				timer = timer + 0.5
            end
            if timer == 100 then
                break
            end
		end
    end) 





Citizen.CreateThread(function()
    while true do

local ped = PlayerPedId()

-- REPARANDO EQUIPO ESTROPEADO CON BLIP
    Citizen.Wait(10)

            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.RepararX, Config.RepararY, Config.RepararZ, true) < 1.5 then
                Draw3DText(Config.RepararX, Config.RepararY, Config.RepararZ-2.0, (' Reparando equipo estropeado ~g~ ' .. timer .. '%'), 4, 0.1, 0.1)
            --Draw3DText 
            end

-- COGIENDO HERRAMIENTAS CON BLIP

            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ, true) < 1.5 then
                Draw3DText(Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ-2.0, (' Cogiendo las herramientas necesarias ~g~ ' .. timer .. '%'), 4, 0.1, 0.1)
            --Draw3DText 
            end

-- TEST DE EQUIPO REPARADO CON BLIP
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.TestX, Config.TestY, Config.TestZ, true) < 1.5 then
                Draw3DText(Config.TestX, Config.TestY, Config.TestZ-2.0, (' Probando el equipo informatico reparado ~g~ ' .. timer .. '%'), 4, 0.1, 0.1)
            end


            if timer == 100 then
                timer = 0
                break
            end
        end
    end)
end)

----- INFORMACION DE LOS BLIPS // FORMA // COLOR // ESCALA // ETC

    Citizen.CreateThread(function()
                    

                    blip1 = AddBlipForCoord(Config.Recoger[rnd].x, Config.Recoger[rnd].y, Config.Recoger[rnd].z)
                    blip2 = AddBlipForCoord(Config.RepararX, Config.RepararY, Config.RepararZ)
                    blip3 = AddBlipForCoord(Config.TestX, Config.TestY, Config.TestZ)
                    blip4 = AddBlipForCoord(Config.FacturaX, Config.FacturaY, Config.FacturaZ)
                    blip5 = AddBlipForCoord(Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ)
                    blip6 = AddBlipForCoord(Config.VehiclespawnX, Config.VehiclespawnY, Config.VehiclespawnZ)

                    SetBlipSprite(blip1, 351)
                    SetBlipColour(blip1, 17)
                    SetBlipScale(blip1,1.0)
                    SetBlipAsShortRange(blip1, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Recogida equipo estropeado")
                    EndTextCommandSetBlipName(blip1)  
                  
                    SetBlipSprite(blip2, 606)
                    SetBlipColour(blip2, 17)
                    SetBlipScale(blip2,1.0)
                    SetBlipAsShortRange(blip2, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Reparacion de equipo")
                    EndTextCommandSetBlipName(blip2)  

                    SetBlipSprite(blip3, 485)
                    SetBlipColour(blip3, 17)
                    SetBlipScale(blip3,1.0)
                    SetBlipAsShortRange(blip3, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Testeo de equipo")
                    EndTextCommandSetBlipName(blip3)

                    SetBlipSprite(blip4, 367)
                    SetBlipColour(blip4, 17)
                    SetBlipScale(blip4,1.0)
                    SetBlipAsShortRange(blip4, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Facturacion")
                    EndTextCommandSetBlipName(blip4)    

                    SetBlipSprite(blip5, 566)
                    SetBlipColour(blip5, 17)
                    SetBlipScale(blip5,1.0)
                    SetBlipAsShortRange(blip5, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Herramientas")
                    EndTextCommandSetBlipName(blip5)

                    SetBlipSprite(blip6, 326)
                    SetBlipColour(blip6, 17)
                    SetBlipScale(blip6,1.0)
                    SetBlipAsShortRange(blip6, true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString("Garaje")
                    EndTextCommandSetBlipName(blip6)

end)

Citizen.CreateThread(function()
    blip1ve = AddBlipForCoord(Config.CloakroomX, Config.CloakroomY, Config.CloakroomZ)
    SetBlipSprite(blip1ve, 459)
    SetBlipColour(blip1ve, 17)
     SetBlipScale(blip1ve,1.0)
    SetBlipAsShortRange(blip1ve, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Informatico")
    EndTextCommandSetBlipName(blip1ve)   
end)



    
-- VESTUARIO 

Citizen.CreateThread(function()
    while true do
	local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
        Citizen.Wait(1)
           if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) then
                if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.CloakroomX, Config.CloakroomY, Config.CloakroomZ, true) < 25 then
                    DrawMarker(25, Config.CloakroomX, Config.CloakroomY, Config.CloakroomZ-0.95, 0, 0, 0, 0, 0, 90.0, 2.0, 2.0, 1.0, 0, 155, 253, 100, 0, 0, 2, 0, 0, 0, 0)
                                   
                                   if GetDistanceBetweenCoords(coords,  Config.CloakroomX,Config.CloakroomY,Config.CloakroomZ, true) < 4.0 then
                                         DrawText3Ds(vector3(Config.CloakroomX,Config.CloakroomY,Config.CloakroomZ), "Presiona [E] entrar al vestuario", 0.35)    
                                    end    
   
                        if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.CloakroomX, Config.CloakroomY, Config.CloakroomZ, true) < 1 then
                            ESX.ShowHelpNotification('Presiona ~INPUT_CONTEXT~ para abrir el menu.')
                                if IsControlJustReleased(1, 51) then
                                    Cloakroom() 
                                end
                         end
                       
                  end
                   
              end
                
      end
     end)

----LOCALIZACIONES PARA RECOGER computer

Citizen.CreateThread(function()
    while true do

    local ped = PlayerPedId()


        Citizen.Wait(1)
        if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) and isInService == true then
            --for i=1, #locations, 1 do
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.Recoger[rnd].x, Config.Recoger[rnd].y, Config.Recoger[rnd].z, true) < 25 and recogerActive == false then
                DrawMarker(20, Config.Recoger[rnd].x, Config.Recoger[rnd].y, Config.Recoger[rnd].z, 0, 0, 0, 0, 0, 100.00, 1.0, 1.0, 1.0, 0, 155, 253, 155, 1, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.Recoger[rnd].x, Config.Recoger[rnd].y, Config.Recoger[rnd].z, true) < 1 then
                        ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para recoger el equipo estropeado.")
                            if IsControlJustReleased(1, 51) then
                                TriggerServerEvent("esxJS:recogerequipo")
                    end
                end
            end
          --end
        end
    end
end)

-- MENSAJE EN BLIPS /// COGER HERRAMIENTAS

Citizen.CreateThread(function()
    while true do

    local ped = PlayerPedId()


        Citizen.Wait(1)
        if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) and isInService == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ, true) < 25 and herramientasActive == false then
                DrawMarker(20, Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ, 0, 0, 0, 0, 0, 55.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 1, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.HerramientasX, Config.HerramientasY, Config.HerramientasZ, true) < 1 then
                        ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para coger las herramientas ")
                            if IsControlJustReleased(1, 51) then
                                TriggerServerEvent("esxJS:cogerherramientas")
                    end
                end
            end
        end
    end
end)

-- MENSAJE EN BLIPS /// REPARAR EQUIPO

Citizen.CreateThread(function()
    while true do

    local ped = PlayerPedId()


        Citizen.Wait(1)
        if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) and isInService == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.RepararX, Config.RepararY, Config.RepararZ, true) < 25 and repararActive == false then
                DrawMarker(20, Config.RepararX, Config.RepararY, Config.RepararZ, 0, 0, 0, 0, 0, 55.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 1, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.RepararX, Config.RepararY, Config.RepararZ, true) < 1 then
                        ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para reparar el equipo estropeado ")
                            if IsControlJustReleased(1, 51) then
                                TriggerServerEvent("esxJS:reparacion")
                    end
                end
            end
        end
    end
end)

-- MENSAJE EN BLIPS // TEST EQUIPO REPARADO

Citizen.CreateThread(function()
    while true do
	local ped = PlayerPedId()
     Citizen.Wait(1)
        if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) and isInService == true then
            if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.TestX, Config.TestY, Config.TestZ, true) < 25 and testActive == false then
                DrawMarker(20, Config.TestX, Config.TestY, Config.TestZ, 0, 0, 0, 0, 0, 55.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 1, 0, 2, 0, 0, 0, 0)
                    if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.TestX, Config.TestY, Config.TestZ, true) < 1 then
                        ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para probar el equipo informatico reparado")
                            if IsControlJustReleased(1, 51) then
                              TriggerServerEvent("esxJS:test")  
                        end
                    end
                end
            end
        end
    end)


-- FUNCIONES /// 

DrawText3Ds = function(coords, text, scale)
    local x,y,z = coords.x, coords.y, coords.z
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 215)

    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 420

    DrawRect(_x, _y + 0.0115, 0.032 + factor, 0.033, 41, 11, 41, 100)
end



-- BLIP ENTREGA FACTURA ///

Citizen.CreateThread(function()
    while true do
	local ped = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId()) 
        Citizen.Wait(1)
    if PlayerData.job ~= nil and PlayerData.job.name == 'computing' and not IsEntityDead( ped ) then
     
        if GetDistanceBetweenCoords(coords,Config.FacturaX,Config.FacturaY,Config.FacturaZ, true) < 2.0 then
         DrawText3Ds(vector3(Config.FacturaX,Config.FacturaY,Config.FacturaZ+0.90), "Presiona [E] para entregar la factura", 0.35)

        end

        if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.FacturaX,  Config.FacturaY, Config.FacturaZ, true) < 25 then
             DrawMarker(25,Config.FacturaX,Config.FacturaY, Config.FacturaZ, 0, 0, 0, 0, 0, 55.0, 1.0, 1.0, 1.0, 0, 155, 253, 100, 0, 0, 2, 0, 0, 0, 0)

               if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.FacturaX, Config.FacturaY, Config.FacturaZ, true) < 2 then
                   ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para entregar la factura ")
                       if IsControlJustReleased(1, 51) then
                           facturar()                          
               end
           end
        end
    end

    end
 end)
    
-- FUNCION ARMARIO

function Cloakroom()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{
			title    = ('Vestuario'),
			elements = {
				{label = ('Ropa de Trabajo'), value = 'job_wear'},
				{label = ('Ropa de Civil'), value = 'citizen_wear'}
			}
		},
		function(data, menu)
			if data.current.value == 'citizen_wear' then
				isInService = false
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
					  local model = nil

					  if skin.sex == 0 then
						model = GetHashKey("mp_m_freemode_01")
					  else
						model = GetHashKey("mp_f_freemode_01")
					  end

					  RequestModel(model)
					  while not HasModelLoaded(model) do
						RequestModel(model)
						Citizen.Wait(1)
					  end

					  SetPlayerModel(PlayerId(), model)
					  SetModelAsNoLongerNeeded(model)

					  TriggerEvent('skinchanger:loadSkin', skin)
					  TriggerEvent('esx:restoreLoadout')
        end)
      end
			if data.current.value == 'job_wear' then
				isInService = true
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
	    			if skin.sex == 0 then
	    				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
					else
	    				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)

					RequestModel(model)
					while not HasModelLoaded(model) do
					RequestModel(model)
					Citizen.Wait(0)
					end

				SetPlayerModel(PlayerId(), model)
				SetModelAsNoLongerNeeded(model)
					end
					
				end)

			end	
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end

-- FUNCION DE FACTURAR

function facturar()
    local elements = {
        {label = 'Entregar la factura',       value = 'factura'},
        {label = '&nbsp;&nbsp;<span style="color:#EA1313;"> Cerrar Ventana</span>' ,       value = 'Salir'},

    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'facturar_actions', {
        title    = ' Mostrador de facturacion ',
        align    = 'top-right',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'factura' then
           -- menu.close()
            TriggerServerEvent("esxJS:facturacion")

        elseif data.current.value == 'Salir' then
         menu.close()
        end
    end)
end

-- FUNCION DE COGER HERRAMIENTAS

function Herrami()
    local ped = PlayerPedId()
    RequestAnimDict("amb@medic@standing@tendtodead@base")
    herramientasActive = true
    Citizen.Wait(100)
    FreezeEntityPosition(ped, true)
    TaskPlayAnim((ped), 'amb@medic@standing@tendtodead@base', 'base', 8.0, 8.0, -1, 2, 0, 0, 0, 0)
    SetEntityHeading(ped, 27.33)
    TriggerEvent("esxJS:Temporizador")
    Citizen.Wait(31800)
    ClearPedTasks(ped)
    FreezeEntityPosition(ped, false)
    herramientasActive = false
    SetBlipRoute(blip1, true)
end

-- FUNCION RECOGIDA

function Recoger()
    local ped = PlayerPedId()
    RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
    recogidaActive = true
    Citizen.Wait(100)
    FreezeEntityPosition(ped, true)
    TaskPlayAnim((ped), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 8.0, 8.0, -1, 80, 0, 0, 0, 0)
    TriggerEvent("esxJS:Temporizador")
    Citizen.Wait(15900)
    ClearPedTasks(ped)
    FreezeEntityPosition(ped, false)
    repararActive = false
    SetBlipRoute(blip1ve, true)
end

-- FUNCION EQUIPO ESTROPEADO

function reparaciones()
    local ped = PlayerPedId()
    RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
    repararActive = true
    Citizen.Wait(100)
    FreezeEntityPosition(ped, true)
    TaskPlayAnim((ped), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 8.0, 8.0, -1, 81, 0, 0, 0, 0)
    SetEntityHeading(ped, 109.96)
    TriggerEvent("esxJS:Temporizador")
    Citizen.Wait(31800)
    ClearPedTasks(ped)
    FreezeEntityPosition(ped, false)
    repararActive = false
    SetBlipRoute(blip1ve, false)
end

-- FUNCION TEST EQUIPO REPARADO

function Testing()
    local ped = PlayerPedId()
    RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
    testActive = true
    Citizen.Wait(100)
    FreezeEntityPosition(ped, true)
    TaskPlayAnim((ped), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 8.0, 8.0, -1, 81, 0, 0, 0, 0)
    SetEntityHeading(ped, 28.21)
    TriggerEvent("esxJS:Temporizador")

    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'test1', 4.0)

    Citizen.Wait(31800)
    ClearPedTasks(ped)
    FreezeEntityPosition(ped, false)
    testActive = false
end

-- //////////////////////////////////////////////////////////// --

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100 


    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextColour(255, 255, 255, 215)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()   

end

DrawText3Ds = function(coords, text, scale)
    local x,y,z = coords.x, coords.y, coords.z
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 215)

    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 420

    DrawRect(_x, _y + 0.0115, 0.032 + factor, 0.033, 41, 11, 41, 100)
end

-- Funcion Garaje

function ScriptLoaded()
    Citizen.Wait(1000)
    LoadMarkers()
end

function LoadMarkers()

    Citizen.CreateThread(function()
        for index, v in ipairs(Positions) do
            if index ~= 'SpawnCAR' then
                local StartBlip = AddBlipForCoord(v.x, v.y, v.z)
                SetBlipSprite(StartBlip, 326)
                SetBlipColour(StartBlip, 17)
                SetBlipScale(StartBlip, 0.7)
                SetBlipAsShortRange(StartBlip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString('Garaje')
                EndTextCommandSetBlipName(StartBlip)
            end
        end
    end)

    LoadModel('moonbeam')

    Citizen.CreateThread(function()
        while true do
            local sleep = 500
            
            local plyCoords = GetEntityCoords(PlayerPedId())

            for index, value in pairs(Positions) do
                if value.hint ~= nil then

                    if dejarveh and index == 'Spawnveh' then
                        value.hint = '[E] para guardar el vehiculo'
                    elseif not dejarveh and index == 'Spawnveh' then
                        value.hint = '[E] para sacar un vehiculo'
                    end

                    local distance = GetDistanceBetweenCoords(plyCoords, value.x, value.y, value.z, true)

                    if distance < 10.0 and isInService == true then
                        sleep = 5
                        DrawM(value.hint, 27, value.x, value.y, value.z - 0.945, 255, 255, 255, 1.5, 15)
                        if distance < 1.0 then
                            if IsControlJustReleased(1, 51) then
                                if index == 'Spawnveh' then
                                    SpawnvehSession()
                                end
                            end
                        end
                    end

                end
                
            end
            Citizen.Wait(sleep)
        end
    end)
end

function SpawnvehSession()

    if dejarveh and isInService == true then

        dejarveh = false

        DeleteEntity(LFIcar)

    elseif dejarveh == false and isInService == true then
        dejarveh = true

        -- Vehiculo

        LFIcar = CreateVehicle(GetHashKey('moonbeam'), Positions['SpawnCAR'].x, Positions['SpawnCAR'].y, Positions['SpawnCAR'].z, 169.79, true, false)
    elseif isInService == false then
        PlaySound(-1, "Menu_Accept", "Phone_SoundSet_Default", false, 0, true)
        ESX.ShowHelpNotification("¡Debes estar de servicio!")
    end
end

function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(10)
    end
end

function DrawM(hint, type, x, y, z)
    ESX.Game.Utils.DrawText3D({x = x, y = y, z = z + 1.0}, hint, 1.0)
    DrawMarker(type, x, y, z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 255, 255, 100, false, true, 2, false, false, false, false)
end