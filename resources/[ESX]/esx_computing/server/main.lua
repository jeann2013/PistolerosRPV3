-- #ESX_COMPUTING v1.0 / By: jgTrue & Sergynano

ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("esxJS:recogerequipo")
AddEventHandler("esxJS:recogerequipo", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source) 
    local computercantidad = xPlayer.getInventoryItem('computer').count  
    local herramientas = xPlayer.getInventoryItem('herramientas').count    

if herramientas < 1  then 
    TriggerClientEvent('esx:showNotification', source, '~i~No tienes herramientas para hacer este trabajo~i~!')
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes herramientas para hacer este trabajo ',length = 5500})
else
        if xPlayer ~= nil then


if computercantidad  > 0 then   
    TriggerClientEvent('esx:showNotification', source, '~i~Ya has recogido el equipo~i~!')
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = 'Ya has recogido el equipo',length = 5500})
        else    
           
      if xPlayer.getInventoryItem('computer').count < 1 then
                TriggerClientEvent("esxJS:recogerequipo", source)
                Citizen.Wait(15900)
                xPlayer.addInventoryItem('computer', 1)
                TriggerClientEvent('esx:showNotification', source, '~g~Has recogido el equipo estropeado~g~!')

            end
        end    
    end

    end
end)


RegisterNetEvent("esxJS:cogerherramientas")
AddEventHandler("esxJS:cogerherramientas", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)    
    local herramientas = xPlayer.getInventoryItem('herramientas').count    

if herramientas > 0  then 
    TriggerClientEvent('esx:showNotification', source, '~i~Ya tienes las herramientas~i~!')
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Ya tienes las herramientas ',length = 5500})
else
        if xPlayer ~= nil then


if herramientas  < 1 then   
         
      if xPlayer.getInventoryItem('computer').count == 0 then
                TriggerClientEvent("esxJS:cogerherramientas", source)
                Citizen.Wait(31800)
                xPlayer.addInventoryItem('herramientas', 1)
                TriggerClientEvent('esx:showNotification', source, '~g~Has recogido las herramientas~g~!')
       end
 end     

        end
    
 end
    end)


RegisterNetEvent("esxJS:reparacion")
AddEventHandler("esxJS:reparacion", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  local equipocantidad = xPlayer.getInventoryItem('equipo').count    
  local herramientas = xPlayer.getInventoryItem('herramientas').count    

if herramientas < 1  then 
    TriggerClientEvent('esx:showNotification', source, '~i~No tienes herramientas para hacer este trabajo~i~!')
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes herramientas para hacer este trabajo ',length = 5500})
else
        if xPlayer ~= nil then


if equipocantidad  > 1 then   
    TriggerClientEvent('esx:showNotification', source, '~i~Ya has reparado el equipo~i~!')
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = 'Ya has reparado el equipo',length = 5500})
        else    
           
      if xPlayer.getInventoryItem('computer').count > 0 then
                TriggerClientEvent("esxJS:reparacion", source)
                Citizen.Wait(31800)
                xPlayer.addInventoryItem('equipo', 1)
                xPlayer.removeInventoryItem("computer", 1)
                TriggerClientEvent('esx:showNotification', source, '~g~El equipo fue reparado con exito~g~!')
               
               elseif xPlayer.getInventoryItem('computer').count < 1 then
                
                TriggerClientEvent('esx:showNotification', source, '~i~No tienes un equipo estropeado para reparar~i~!')
                --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No Tienes un equipo estropeado para reparar.',length = 7000})
             
              else
        TriggerClientEvent('esx:showNotification', source, '~b~Necesitas un equipo para reparar~b~!')
        --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes un equipo estropeado para reparar. ',length = 7000})

       end
 end     

        end
    
 end
    end)

RegisterNetEvent("esxJS:test")
AddEventHandler("esxJS:test", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local randomChance = math.random(1, 100)
    local herramientas = xPlayer.getInventoryItem('herramientas').count    
    local limitefactura = xPlayer.getInventoryItem('factura').count 


if herramientas < 1  then 
         TriggerClientEvent('esx:showNotification', source, '~i~No tienes herramientas para hacer este trabajo')
         --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes herramientas para hacer este trabajo ',length = 5500})
else

        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('equipo').count > 0 then
                TriggerClientEvent("esxJS:test", source)
                Citizen.Wait(31800)
                
                if randomChance > 0 then

            
                   if limitefactura > 1 then
                    TriggerClientEvent('esx:showNotification', source, '~i~No puedes llevar más facturas')
                    --TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaroja', text = ' No puedes llevar mas facturas ',length = 7000})
                    else
                    xPlayer.addInventoryItem("factura", 1)
                    xPlayer.removeInventoryItem("equipo", 1)
                    TriggerClientEvent('esx:showNotification', source, '~g~El equipo fue testeado. ~b~Acabas de obtener la factura')
                    --TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaazul', text = ' Acabas de obtener la factura ',length = 5000})

                     end
                
                end
           
            elseif xPlayer.getInventoryItem('equipo').count < 1 then
        TriggerClientEvent('esx:showNotification', source, '~i~No tienes ningun equipo para testear')
        --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes un equipo para testear. ',length = 7000})


            end
        

        end
   
 end
    end)


RegisterNetEvent("esxJS:facturacion")
AddEventHandler("esxJS:facturacion", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local herramientas = xPlayer.getInventoryItem('herramientas').count 

if herramientas < 1  then 
 TriggerClientEvent('esx:showNotification', source, '~i~No tienes herramientas para hacer este trabajo')
 --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No tienes herramientas para hacer este trabajo ',length = 3500})
else

        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('factura').count > 0 then
                local rnd = math.random(1,6)
                local sueldo = Config.nomina[rnd].amount
                xPlayer.removeInventoryItem('factura', 1)
                xPlayer.removeInventoryItem('herramientas', 1)
                xPlayer.addMoney(sueldo)
                TriggerClientEvent('esx:showNotification', source, '~g~Acabas de recibir ' .. sueldo ..'~g~$ por tu trabajo' )
                TriggerClientEvent('esx:showNotification', source, '~b~Entregaste la factura y las herramientas')
                --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = 'Acabas de entregar la factura y las herramientas ',length = 2500})

            elseif xPlayer.getInventoryItem('factura').count < 1 then
              TriggerClientEvent('esx:showNotification', source, '~i~Aún no has testeado el equipo')
              --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' No has testeado el equipo tras repararlo. ',length = 3500})

            end
        end

end
    end)