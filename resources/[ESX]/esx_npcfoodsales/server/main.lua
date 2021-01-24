ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local selling = false
	local success = false
	local copscalled = false
	local notintrested = false

  RegisterNetEvent('foods:trigger')
  AddEventHandler('foods:trigger', function()
	selling = true
	    if selling == true then
			TriggerEvent('pass_or_fail')
  			TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 1)
  			TriggerClientEvent("pNotify:SendNotification", source, {
            text = "tratando de convencer a la persona de que compre comida",
            type = "error",
            queue = "lmao",
            timeout = 2000,
            layout = "Centerleft"
        	})
 	end
end)

RegisterServerEvent('fetchjob')
AddEventHandler('fetchjob', function()
    local xPlayer  = ESX.GetPlayerFromId(source)
    TriggerClientEvent('getjob', source, xPlayer.job.name)
end)


  RegisterNetEvent('foods:sell')
  AddEventHandler('foods:sell', function()
		local xPlayer = ESX.GetPlayerFromId(source)
		local pollofrito = xPlayer.getInventoryItem('pollofrito').count
		local sprite 	  = xPlayer.getInventoryItem('sprite').count
		local pepsicola = xPlayer.getInventoryItem('pepsicola').count
		local hotdog = xPlayer.getInventoryItem('hotdog').count

		local cevichedolphin = xPlayer.getInventoryItem('cevichedolphin').count
		local cevichekillerwhale = xPlayer.getInventoryItem('cevichekillerwhale').count		
		local cevichetiburon = xPlayer.getInventoryItem('cevichetiburon').count
		local cevichetiburonmartillo = xPlayer.getInventoryItem('cevichetiburonmartillo').count
		local cevichetiburontigre = xPlayer.getInventoryItem('cevichetiburontigre').count
		local cevichetortuga = xPlayer.getInventoryItem('cevichetortuga').count

		local paymentpollofrito = 179	
		local paymentsprite = 129	
		local paymentpepsicola = 139	
		local paymenthotdog = 179	
		local kindDrug = 0
		local foodExist = false
		local drinkExist = false
		local quantityPollofrito = 0
		local quantityHotdog = 0
		local quantitySprite = 0
		local quantityPepsicola = 0
		local kindFood = 0
		local kindDrink = 0
		local foodIlegal = false
		local quantityIllegalFood = 0
		local paymentCeviche1 = 2000;
		local paymentCeviche2 = 3500;

		if pollofrito > 0 or hotdog > 0 then
			foodExist = true		
		end

		if sprite > 0 or pepsicola > 0 then
			drinkExist = true		
		end

		if foodExist and drinkExist then

			if pollofrito >= 1 then
				quantityPollofrito = math.random (1, pollofrito)
			end

			if hotdog >= 1 then
				quantityHotdog = math.random (1, hotdog)
			end
			-------------
			if sprite >= 1 then
				quantitySprite = math.random (1, sprite)
			end

			if pepsicola >= 1 then
				quantityPepsicola = math.random (1, pepsicola)
			end

			if quantityPollofrito > 0 and quantityHotdog > 0 and quantitySprite > 0 and  quantityPepsicola > 0 then
					kindFood = math.random (1, 2)
					if kindFood == 1 then

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
								type = "success",
								progressBar = false,
								queue = "lmao",
								timeout = 2500,
								layout = "CenterLeft"
						})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
						xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

					end
					if kindFood == 2 then
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
								type = "success",
								progressBar = false,
								queue = "lmao",
								timeout = 2500,
								layout = "CenterLeft"
						})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('hotdog', quantityHotdog)
						xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
					end

					kindDrink = math.random (1, 2)
					if kindDrink == 1 then

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
								type = "success",
								progressBar = false,
								queue = "lmao",
								timeout = 2500,
								layout = "CenterLeft"
						})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('sprite', quantitySprite)
						xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

					end
					if kindDrink == 2 then
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
								type = "success",
								progressBar = false,
								queue = "lmao",
								timeout = 2500,
								layout = "CenterLeft"
						})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
						xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
					end
			end

			if quantityPollofrito > 0 and quantityHotdog == 0 and quantitySprite > 0 and  quantityPepsicola == 0 then
				kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
					xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

				end		

				kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('sprite', quantitySprite)
					xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

				end			
		
		
			end

			if quantityPollofrito > 0 and quantityHotdog == 0 and quantitySprite == 0 and  quantityPepsicola > 0 then
				kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
					xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

				end		

				kindDrink = 2
				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
					xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
				end	
		
		
			end

			if quantityPollofrito > 0 and quantityHotdog == 0 and quantitySprite > 0 and  quantityPepsicola > 0 then
				kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
					xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

				end		

				kindDrink = math.random (1, 2)
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('sprite', quantitySprite)
					xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

				end
				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
					xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
				end
		
		
			end

			if quantityPollofrito == 0 and quantityHotdog > 0 and quantitySprite > 0 and  quantityPepsicola > 0 then
				kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('hotdog', quantityHotdog)
					xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
				end	

				kindDrink = math.random (1, 2)
				if kindDrink == 1 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('sprite', quantitySprite)
					xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

				end

				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
					xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
				end
			end

			if quantityPollofrito == 0 and quantityHotdog > 0 and quantitySprite == 0 and  quantityPepsicola > 0 then
				kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('hotdog', quantityHotdog)
					xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
				end	
				kindDrink = 2
				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
					xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
				end
			end

			if quantityPollofrito == 0 and quantityHotdog > 0 and quantitySprite > 0 and  quantityPepsicola == 0 then
				kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('hotdog', quantityHotdog)
					xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
				end

				kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('sprite', quantitySprite)
					xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

				end
			end

			if quantityPollofrito > 0 and quantityHotdog > 0 and quantitySprite == 0 and  quantityPepsicola > 0 then
				kindFood = math.random (1, 2)
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
					xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

				end
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('hotdog', quantityHotdog)
					xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
				end

				local kindDrink = 2
				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPepsicola.."X Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pepsicola', quantityPepsicola)
					xPlayer.addAccountMoney('money', paymentpepsicola*quantityPepsicola)
				end
			end	
			
			if quantityPollofrito > 0 and quantityHotdog > 0 and quantitySprite > 0 and  quantityPepsicola == 0 then
				kindFood = math.random (1, 2)
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityPollofrito.."X Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('pollofrito', quantityPollofrito)
					xPlayer.addAccountMoney('money', paymentpollofrito*quantityPollofrito)

				end
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityHotdog.."x HotDog por $" .. paymenthotdog*quantityHotdog ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('hotdog', quantityHotdog)
					xPlayer.addAccountMoney('money', paymenthotdog*quantityHotdog)
				end

				kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantitySprite.."X Sprite por $" .. paymentsprite*quantitySprite ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('sprite', quantitySprite)
					xPlayer.addAccountMoney('money', paymentsprite*quantitySprite)

				end	
			end	
		end	

		if cevichedolphin > 0 or cevichekillerwhale > 0 or 
		cevichetiburon > 0 or cevichetiburonmartillo > 0 or cevichetiburontigre > 0  or 
		cevichetortuga > 0 then
			local interestingCustumer = math.random(1, 20)						
			local saleMade = true;
			if interestingCustumer <= 9 then
				if cevichedolphin > 0 and saleMade then
					if cevichedolphin >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichedolphin)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Delfin por $" .. paymentCeviche2*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichedolphin', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche2*quantityIllegalFood)
					saleMade = false
				end

				if cevichekillerwhale > 0 and saleMade then
					if cevichekillerwhale >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichekillerwhale)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Orca por $" .. paymentCeviche2*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichekillerwhale', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche2*quantityIllegalFood)
					saleMade = false
				end

				if cevichetiburon > 0 and saleMade then
					if cevichetiburon >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichetiburon)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Tuburon por $" .. paymentCeviche1*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichetiburon', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche1*quantityIllegalFood)
					saleMade = false
				end

				if cevichetiburonmartillo > 0 and saleMade then
					if cevichetiburonmartillo >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichetiburonmartillo)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Tuburon martillo por $" .. paymentCeviche1*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichetiburonmartillo', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche1*quantityIllegalFood)
					saleMade = false
				end

				if cevichetiburontigre > 0 and saleMade then
					if cevichetiburontigre >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichetiburontigre)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Tuburon tigre por $" .. paymentCeviche2*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichetiburontigre', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche2*quantityIllegalFood)
					saleMade = false
				end

				if cevichetortuga > 0 and saleMade then
					if cevichetortuga >= 3 then
						quantityIllegalFood = math.random (1, 3)
					else
						quantityIllegalFood = math.random (1, cevichetortuga)
					end

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste "..quantityIllegalFood.."X Ceviche de Tortuga marina por $" .. paymentCeviche1*quantityIllegalFood ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2500,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('cevichetortuga', quantityIllegalFood)
					xPlayer.addAccountMoney('black_money', paymentCeviche1*quantityIllegalFood)
					saleMade = false
				end
			else
				TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
				TriggerClientEvent("pNotify:SendNotification", source, {
						text = "El cliente no quiera del producto " ,
						type = "success",
						progressBar = false,
						queue = "lmao",
						timeout = 2500,
						layout = "CenterLeft"
				})				
			end
			
		end
	
end)

RegisterNetEvent('pass_or_fail')
AddEventHandler('pass_or_fail', function()

  		local percent = math.random(1, 11)

  		if percent == 7 or percent == 8 or percent == 9 then
  			success = false
  			notintrested = true
  		elseif percent ~= 8 and percent ~= 9 and percent ~= 10 and percent ~= 7 then
  			success = true
  			notintrested = false
  		else
  			notintrested = false
  			success = false
  			copscalled = true
  		end
end)

RegisterNetEvent('sell_dis')
AddEventHandler('sell_dis', function()
		TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
		TriggerClientEvent("pNotify:SendNotification", source, {
		text = "Estas lejos para vender",
		type = "error",
		progressBar = false,
		queue = "lmao",
		timeout = 2500,
		layout = "CenterLeft"
	})
end)


RegisterNetEvent('checkFoodDrugsServer')
AddEventHandler('checkFoodDrugsServer', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local pollofrito = xPlayer.getInventoryItem('pollofrito').count
	local sprite 	  = xPlayer.getInventoryItem('sprite').count
	local pepsicola = xPlayer.getInventoryItem('pepsicola').count
	local hotdog = xPlayer.getInventoryItem('hotdog').count
	
	local cevichedolphin = xPlayer.getInventoryItem('cevichedolphin').count
	local cevichekillerwhale = xPlayer.getInventoryItem('cevichekillerwhale').count	
	local cevichetiburon = xPlayer.getInventoryItem('cevichetiburon').count
	local cevichetiburonmartillo = xPlayer.getInventoryItem('cevichetiburonmartillo').count
	local cevichetiburontigre = xPlayer.getInventoryItem('cevichetiburontigre').count
	local cevichetortuga = xPlayer.getInventoryItem('cevichetortuga').count

	local notHasDrugs = true
	local foodExist = false
	local drinkExist = false
	local foodIllegalExist = false

	local meth = xPlayer.getInventoryItem('meth_pooch').count
	local coke 	  = xPlayer.getInventoryItem('coke_pooch').count
	local weed = xPlayer.getInventoryItem('marijuana').count
	local opium = xPlayer.getInventoryItem('opium_pooch').count

	if meth > 0 or coke > 0 or weed > 0 or opium > 0 then
		notHasDrugs = false	
	end

	if pollofrito > 0 or hotdog > 0 or cevichedolphin > 0 or cevichekillerwhale > 0 or 
	cevichetiburon > 0 or cevichetiburonmartillo > 0 or 
	cevichetiburontigre > 0  or cevichetortuga > 0 then
		foodIllegalExist = true		
	end
	
	if sprite > 0 or pepsicola > 0 then
		drinkExist = true		
	end

	if foodExist and drinkExist and notHasDrugs then
		TriggerClientEvent("checkFoodDrugs", source, true)		
	else
		if foodIllegalExist then
			TriggerClientEvent("checkFoodDrugs", source, true)		
		else
			TriggerClientEvent("checkFoodDrugs", source, false)		
		end
	end

end)
