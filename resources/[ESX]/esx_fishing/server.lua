ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('fish', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		local stingrayFish = math.random(1,2)		
		if stingrayFish == 1 then
			TriggerClientEvent('fishing:setbait', _source, "stingray")
		else
			TriggerClientEvent('fishing:setbait', _source, "fish")
		end
		
		xPlayer.removeInventoryItem('fish', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocastes carne de pescado en tu caña de pescar")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('turtlebait', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "turtle")
		
		xPlayer.removeInventoryItem('turtlebait', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Has colocado la carnada de tortuga en tu caña de pescar")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('fishbait', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "fish")
		
		xPlayer.removeInventoryItem('fishbait', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Has colocado la carnada en tu caña de pescar")
		
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('turtle', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "shark")
		
		xPlayer.removeInventoryItem('turtle', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocastes una tortuga en la caña de pescar")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

--Modifying
ESX.RegisterUsableItem('stingray', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "dolphin")
		
		xPlayer.removeInventoryItem('stingray', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocas carne de mantarraya en la caña de pescar")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('dolphin', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "sharktiger")
		
		xPlayer.removeInventoryItem('dolphin', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocas carne de delfín en la caña de pescar.")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('sharktiger', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "sharkhammer")
		
		xPlayer.removeInventoryItem('sharktiger', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocas carne de tiburón tigre en la caña de pescar.")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)

ESX.RegisterUsableItem('sharkhammer', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "killerwhale")
		
		xPlayer.removeInventoryItem('sharkhammer', 1)
		TriggerClientEvent('fishing:message', _source, "~g~Colocas carne de tiburón martillo en la caña de pescar")
	else
		TriggerClientEvent('fishing:message', _source, "~r~No tienes caña de pescar")
	end
	
end)
--Modifying

ESX.RegisterUsableItem('fishingrod', function(source)

	local _source = source
	TriggerClientEvent('fishing:fishstart', _source)
	
	

end)


				
RegisterNetEvent('fishing:catch')
AddEventHandler('fishing:catch', function(bait)
	
	_source = source
	local weight = 2
	local rnd = math.random(1,100)
	xPlayer = ESX.GetPlayerFromId(_source)
	if bait == "turtle" then
		if rnd >= 78 then
			if rnd >= 94 then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "~r~¡Era enorme y rompió tu caña de pescar!")
				TriggerClientEvent('fishing:break', _source)
				xPlayer.removeInventoryItem('fishingrod', 1)
			else
				TriggerClientEvent('fishing:setbait', _source, "none")
				if xPlayer.getInventoryItem('turtle').count > 4 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más tortugas")
				else
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste una tortuga\n~r~Estas son especies en peligro de extinción y su posesión es ilegal")					
					xPlayer.addInventoryItem('turtle', 1)
				end
			end
		else
			if rnd >= 75 then
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
				else
					weight = math.random(4,9)
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
					TriggerClientEvent('fish:spawnPed', _source)
					xPlayer.addInventoryItem('fish', weight)
				end
				
			else
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
				else
					weight = math.random(2,6)
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
					TriggerClientEvent('fish:spawnPed', _source)
					xPlayer.addInventoryItem('fish', weight)
				end
			end
		end
	else
		if bait == "stingray" then		
			if rnd >= 94 then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "Era enorme y te rompió tu ~y~caña de pescar!")
				TriggerClientEvent('fishing:break', _source)
				xPlayer.removeInventoryItem('fishingrod', 1)
			else
				TriggerClientEvent('fishing:setbait', _source, "none")
				if xPlayer.getInventoryItem('stingray').count > 10 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más mantarrayas")
				else
					TriggerClientEvent('fishing:message', _source, "Capturastes una ~y~mantarraya!~s~\n ")
					TriggerClientEvent('stingray:spawnPed', _source)
					xPlayer.addInventoryItem('stingray', 1)
				end
			end
		end
		if bait == "fish" then
			if rnd >= 75 then
				TriggerClientEvent('fishing:setbait', _source, "none")
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
				else
					weight = math.random(4,11)
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
					TriggerClientEvent('fish:spawnPed', _source)
					xPlayer.addInventoryItem('fish', weight)
				end
				
			else
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
				else
					weight = math.random(1,6)
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
					TriggerClientEvent('fish:spawnPed', _source)
					xPlayer.addInventoryItem('fish', weight)
				end
			end
		end
		if bait == "none" then
			
			if rnd >= 70 then
			TriggerClientEvent('fishing:message', _source, "~y~Actualmente estás pescando sin ningúna carnada equipado")
				if  xPlayer.getInventoryItem('fish').count > 100 then
						TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
				else
					weight = math.random(2,4)
					TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
					TriggerClientEvent('fish:spawnPed', _source)
					xPlayer.addInventoryItem('fish', weight)
				end
					
			else
				TriggerClientEvent('fishing:message', _source, "~y~Actualmente estás pescando sin ningúna carnada equipado")
					if xPlayer.getInventoryItem('fish').count > 100 then
						TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más pescados")
					else
						weight = math.random(1,2)
						TriggerClientEvent('fishing:message', _source, "~g~Atrapaste un pez: ~y~~h~" .. weight .. " peces")
						TriggerClientEvent('fish:spawnPed', _source)
						xPlayer.addInventoryItem('fish', weight)
					end
			end
		end
		if bait == "shark" then			
			if xPlayer.getInventoryItem('shark').count > 1  then
					TriggerClientEvent('fishing:setbait', _source, "none")
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más tiburones")
			else
					TriggerClientEvent('fishing:message', _source, "~g~¡Atrapaste un tiburón!~r~Estas son especies en peligro de extinción y su posesión es ilegal")
					TriggerClientEvent('sharktiger:spawnPed', _source)
					xPlayer.addInventoryItem('shark', 1)
			end
			
		end
		if bait == "sharktiger" then
				if xPlayer.getInventoryItem('sharktiger').count > 1  then
					TriggerClientEvent('fishing:setbait', _source, "none")
					TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más tiburones tigre")
				else
					TriggerClientEvent('fishing:message', _source, "Capturastes un  ~y~tuburon tigre!~s~\nEstas son especies en peligro de extinción y es ~r~ilegal~s~ poseerlo")
					TriggerClientEvent('sharktiger:spawnPed', _source)
					xPlayer.addInventoryItem('sharktiger', 1)
				end
		end
		if bait == "sharkhammer" then							
			if xPlayer.getInventoryItem('sharkhammer').count > 1  then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más tiburones martillo")
			else
				TriggerClientEvent('fishing:message', _source, "Capturastes un  ~y~tuburon martillo!~s~\nEstas son especies en peligro de extinción y es ~r~ilegal~s~ poseerlo")
				TriggerClientEvent('sharkhammer:spawnPed', _source)
				xPlayer.addInventoryItem('sharkhammer', 1)
			end
		end        
		if bait == "killerwhale" then		
			if xPlayer.getInventoryItem('killerwhale').count > 1  then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más orcas")
			else
				TriggerClientEvent('fishing:message', _source, "Capturastes una ~y~Orca!~s~\nEstas son especies en peligro de extinción y es ~r~ilegal~s~ proseerlo")
				TriggerClientEvent('killerwhale:spawnPed', _source)
				xPlayer.addInventoryItem('killerwhale', 1)
			end
		end
		if bait == "dolphin" then			
			if xPlayer.getInventoryItem('dolphin').count > 1  then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "~r~No puedes sostener más orcas")
			else
				TriggerClientEvent('fishing:message', _source, "Capturastes una ~y~Delfin!~s~\nEstas son especies en peligro de extinción y es ~r~ilegal~s~ proseerlo")
				TriggerClientEvent('dolphin:spawnPed', _source)
				xPlayer.addInventoryItem('dolphin', 1)
			end	
		end
		
	end
end)

RegisterServerEvent("fishing:lowmoney")
AddEventHandler("fishing:lowmoney", function(money)
    local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(money)
end)

RegisterServerEvent('fishing:startSelling')
AddEventHandler('fishing:startSelling', function(item)
	local _source = source
	print('item',item)
	local xPlayer  = ESX.GetPlayerFromId(_source)
			if item == "fish" then
				local FishQuantity = xPlayer.getInventoryItem('fish').count
					if FishQuantity <= 4 then
						TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ pescado')			
					else   
						xPlayer.removeInventoryItem('fish', 5)
						local payment = Config.FishPrice.a
						payment = math.random(Config.FishPrice.a, Config.FishPrice.b) 
						xPlayer.addMoney(payment)						
						TriggerClientEvent('fishing:message', _source, "~g~Vendistes 5 Peces por: "..payment)
					end
			end
			if item == "turtle" then
				local FishQuantity = xPlayer.getInventoryItem('turtle').count

				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ tortugas de mar')			
				else   
					xPlayer.removeInventoryItem('turtle', 1)
					local payment = Config.TurtlePrice.a
					payment = math.random(Config.TurtlePrice.a, Config.TurtlePrice.b) 
					xPlayer.addAccountMoney('black_money', payment)					
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes una tortuga de mar por: "..payment)
				end
			end
			if item == "shark" then
				local FishQuantity = xPlayer.getInventoryItem('shark').count

				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ tiburones')			
				else   
					xPlayer.removeInventoryItem('shark', 1)
					local payment = Config.SharkPrice.a
					payment = math.random(Config.SharkPrice.a, Config.SharkPrice.b)
					xPlayer.addAccountMoney('black_money', payment)					
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes un tiburon por: "..payment)
				end
			end
			if item == "stingray" then
				local FishQuantity = xPlayer.getInventoryItem('stingray').count

				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ matarrayas')			
				else   
					xPlayer.removeInventoryItem('stingray', 1)
					local payment = Config.StingrayPrice.a
					payment = math.random(Config.StingrayPrice.a, Config.StingrayPrice.b)
					xPlayer.addAccountMoney('money', payment)					
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes una matarraya por: "..payment)
				end
			end
			if item == "sharktiger" then
				local FishQuantity = xPlayer.getInventoryItem('sharktiger').count
				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ tiburon tigre')			
				else   
					xPlayer.removeInventoryItem('sharktiger', 1)
					local payment = Config.SharktigerPrice.a
					payment = math.random(Config.SharktigerPrice.a, Config.SharktigerPrice.b)
					xPlayer.addAccountMoney('black_money', payment)					
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes un tiburon tigre por: "..payment)
				end
			end
			if item == "sharkhammer" then
				local FishQuantity = xPlayer.getInventoryItem('sharkhammer').count
				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ tiburon martillo')			
				else   
					xPlayer.removeInventoryItem('sharkhammer', 1)
					local payment = Config.SharkhammerPrice.a
					payment = math.random(Config.SharkhammerPrice.a, Config.SharkhammerPrice.b)
					xPlayer.addAccountMoney('black_money', payment)
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes un tiburon martillo por: "..payment)					
				end
			end
			if item == "killerwhale" then
				local FishQuantity = xPlayer.getInventoryItem('killerwhale').count
				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ Orcas')			
				else   
					xPlayer.removeInventoryItem('killerwhale', 1)
					local payment = Config.KillerwhalePrice.a
					payment = math.random(Config.KillerwhalePrice.a, Config.KillerwhalePrice.b)
					xPlayer.addAccountMoney('black_money', payment)
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes una Orca por: "..payment)					
				end
			end
			if item == "dolphin" then
				local FishQuantity = xPlayer.getInventoryItem('dolphin').count
				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficiente~s~ delfines')			
				else   
					xPlayer.removeInventoryItem('dolphin', 1)
					local payment = Config.DolphinPrice.a
					payment = math.random(Config.DolphinPrice.a, Config.DolphinPrice.b)
					xPlayer.addAccountMoney('black_money', payment)
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes un Delfin por: "..payment)					
				end
			end
			if item == "ceviche" then
				local dolphinQuantity = xPlayer.getInventoryItem('dolphin').count
				if dolphinQuantity > 0 then
					xPlayer.removeInventoryItem('dolphin', 1)
					xPlayer.addInventoryItem('cevichedolphin', 10)					
				end				
				local killerwhaleQuantity = xPlayer.getInventoryItem('killerwhale').count
				if killerwhaleQuantity > 0 then
					xPlayer.removeInventoryItem('killerwhale', 1)
					xPlayer.addInventoryItem('cevichekillerwhale', 10)					
				end
				local sharkhammerQuantity = xPlayer.getInventoryItem('sharkhammer').count
				if sharkhammerQuantity > 0 then
					xPlayer.removeInventoryItem('sharkhammer', 1)
					xPlayer.addInventoryItem('cevichetiburonmartillo', 10)					
				end
				local sharktigerQuantity = xPlayer.getInventoryItem('sharktiger').count
				if sharktigerQuantity > 0 then
					xPlayer.removeInventoryItem('sharktiger', 1)
					xPlayer.addInventoryItem('cevichetiburontigre', 10)					
				end
				local turtleQuantity = xPlayer.getInventoryItem('turtle').count				
				if turtleQuantity > 0 then
					xPlayer.removeInventoryItem('turtle', 1)
					xPlayer.addInventoryItem('cevichetortuga', 10)					
				end

				local sharkQuantity = xPlayer.getInventoryItem('shark').count				
				if sharkQuantity > 0 then
					xPlayer.removeInventoryItem('shark', 1)
					xPlayer.addInventoryItem('cevichetiburon', 10)					
				end

				if sharkhammerQuantity == 0 and  turtleQuantity == 0 and sharkQuantity == 0 and dolphinQuantity == 0 and killerwhaleQuantity == 0 and sharktigerQuantity == 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficiente carne de mar como: delfines,tiburones,ballenas u otros, para hacer ceviche');
				end				
			end
			if item == "weapon" then
				local chatarraQuantity = xPlayer.getInventoryItem('chatarra').count
				local goldQuantity = xPlayer.getInventoryItem('gold').count
				local diamondQuantity = xPlayer.getInventoryItem('diamond').count

				if chatarraQuantity >= 25 and goldQuantity >= 6 and diamondQuantity >= 6 then
					if xPlayer.hasWeapon('WEAPON_APPISTOL') then
						TriggerClientEvent('esx:showNotification', source, '~r~Ya tienes un arma~s~ debes dejarla para darte una')	
					else
						xPlayer.removeInventoryItem('chatarra', 25)
						xPlayer.removeInventoryItem('gold', 5)
						xPlayer.removeInventoryItem('diamond', 5)					
						xPlayer.addWeapon('WEAPON_APPISTOL', 250)	
					end
				elseif chatarraQuantity >= 25 and goldQuantity >= 7 and diamondQuantity >= 7 then
					if xPlayer.hasWeapon('WEAPON_COMBATPISTOL') then
						TriggerClientEvent('esx:showNotification', source, '~r~Ya tienes un arma~s~ debes dejarla para darte una')	
					else
						xPlayer.removeInventoryItem('chatarra', 25)
						xPlayer.removeInventoryItem('gold', 3)
						xPlayer.removeInventoryItem('diamond', 3)					
						xPlayer.addWeapon('WEAPON_COMBATPISTOL', 250)	
					end
				else
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficiente~s~ Chatarras (minimo 25),Oro(entre 6 y 7) y Diamantes(entre 6 y 7), para darte armas de fuego')	
				end	

			end
			if item == "weapon_white" then
				local chatarraQuantity = xPlayer.getInventoryItem('chatarra').count
				local goldQuantity = xPlayer.getInventoryItem('gold').count
				local diamondQuantity = xPlayer.getInventoryItem('diamond').count
								
				if chatarraQuantity >= 5 and chatarraQuantity < 10 and goldQuantity >= 1 and diamondQuantity >= 1 then
					if xPlayer.hasWeapon('WEAPON_KNIFE') then
						TriggerClientEvent('esx:showNotification', source, '~r~Tienes una navaja encima, debes dejarla~s~ para darte una')					
					else
						xPlayer.removeInventoryItem('chatarra', 5)
						xPlayer.removeInventoryItem('gold', 1)
						xPlayer.removeInventoryItem('diamond', 1)					
						xPlayer.addWeapon('WEAPON_KNIFE', 1)	
					end
				elseif chatarraQuantity >= 10 and chatarraQuantity < 15 and goldQuantity >= 1 and diamondQuantity >= 1 then
					if xPlayer.hasWeapon('WEAPON_MACHETE') then
						TriggerClientEvent('esx:showNotification', source, '~r~Tienes un machete encima, debes dejarlo~s~ para darte uno')					
					else
						xPlayer.removeInventoryItem('chatarra', 10)
						xPlayer.removeInventoryItem('gold', 1)
						xPlayer.removeInventoryItem('diamond', 1)					
						xPlayer.addWeapon('WEAPON_MACHETE', 1)	
					end
				elseif chatarraQuantity >= 15 and chatarraQuantity < 17 and goldQuantity >= 1 and diamondQuantity >= 1 then
					if xPlayer.hasWeapon('WEAPON_POOLCUE') then
						TriggerClientEvent('esx:showNotification', source, '~r~Tienes un palo de pool encima, debes dejarlo~s~ para darte uno')					
					else
						xPlayer.removeInventoryItem('chatarra', 15)
						xPlayer.removeInventoryItem('gold', 1)
						xPlayer.removeInventoryItem('diamond', 1)					
						xPlayer.addWeapon('WEAPON_POOLCUE', 1)	
					end
				elseif chatarraQuantity >= 17 and goldQuantity >= 1 and diamondQuantity >= 1 then
					if xPlayer.hasWeapon('WEAPON_HATCHET') then
						TriggerClientEvent('esx:showNotification', source, '~r~Tienes una hacha encima, debes dejarla~s~ para darte una')					
					else
						xPlayer.removeInventoryItem('chatarra', 17)
						xPlayer.removeInventoryItem('gold', 1)
						xPlayer.removeInventoryItem('diamond', 1)					
						xPlayer.addWeapon('WEAPON_HATCHET', 1)	
					end
				else
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficiente~s~ Chatarras(entre 8 y 20),Oro(aolo 1) y Diamantes(solo 1), para darte armas blancas')	
				end					

			end
			if item == "chatarra" then
				local chatarraQuantity = xPlayer.getInventoryItem('chatarra').count				

				if chatarraQuantity >= 1 then
					xPlayer.removeInventoryItem('chatarra', chatarraQuantity)
					xPlayer.addAccountMoney('black_money', chatarraQuantity * 150)
					TriggerClientEvent('fishing:message', _source, "~g~Vendistes Chatarra por: "..chatarraQuantity * 150)	
				else					
					TriggerClientEvent('esx:showNotification', source, '~r~No tienes suficientes~s~ Chatarras')					
				end	

			end
end)

