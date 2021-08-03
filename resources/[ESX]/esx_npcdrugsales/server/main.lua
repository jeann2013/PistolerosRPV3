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

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local selling = false
	local success = false
	local copscalled = false
	local notintrested = false

  RegisterNetEvent('drugs:trigger')
  AddEventHandler('drugs:trigger', function()
	selling = true
	    if selling == true then
			TriggerEvent('pass_or_fail')
  			TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 1)
  			TriggerClientEvent("pNotify:SendNotification", source, {
            text = "tratando de convencer a la persona de que compre el producto",
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
  RegisterNetEvent('drugs:sell')
  AddEventHandler('drugs:sell', function()
		local xPlayer = ESX.GetPlayerFromId(source)
		local meth = xPlayer.getInventoryItem('meth_pooch').count
		local coke = xPlayer.getInventoryItem('coke_pooch').count
		local weed = xPlayer.getInventoryItem('marijuana').count		
		local weed_dirty = xPlayer.getInventoryItem('weed_pooch').count
		local opium = xPlayer.getInventoryItem('opium_pooch').count
		local paymentc = math.random (651,850)	
		local paymentm = math.random (651,850)
		local paymentw = math.random (201,350)
		local paymento = math.random (651,850)
		local paymentwd = math.random (100,200)
		local kindDrug = 0

		if weed_dirty > 0 then
			if weed_dirty >= 5 then 
				local drugQuantity = math.random (1, 5)
				TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
				TriggerClientEvent("pNotify:SendNotification", source, {
					text = "Descargaste un poco de marihuana sucia por $" .. paymentwd*drugQuantity ,
					type = "success",
					progressBar = false,
					queue = "lmao",
					timeout = 2000,
					layout = "CenterLeft"
				})
				TriggerClientEvent("animation", source)
				TriggerClientEvent("test", source)
				xPlayer.removeInventoryItem('weed_pooch', drugQuantity)
				xPlayer.addAccountMoney('black_money', paymentwd*drugQuantity)
				selling = false
			end
			if weed_dirty <= 4  then 
				local drugQuantity = 1
				TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
				TriggerClientEvent("pNotify:SendNotification", source, {
					text = "Descargaste un poco de marihuana sucia por $" .. paymentwd*drugQuantity ,
					type = "success",
					progressBar = false,
					queue = "lmao",
					timeout = 2000,
					layout = "CenterLeft"
				})
				TriggerClientEvent("animation", source)
				TriggerClientEvent("test", source)
				xPlayer.removeInventoryItem('weed_pooch', drugQuantity)
				xPlayer.addAccountMoney('black_money', paymentwd*drugQuantity)
				selling = false
			end
		else

			if coke > 0 and  weed > 0 and meth > 0 and opium > 0 then
				kindDrug = math.random (1, 4)
			end

			if coke == 0 and  weed > 0 and meth > 0 and opium > 0 then
				kindDrug = math.random (2, 4)
			end

			if coke == 0 and  weed == 0 and meth > 0 and opium > 0 then
				kindDrug = math.random (3, 4)
			end

			if coke == 0 and  weed > 0 and meth > 0 and opium == 0 then
				kindDrug = math.random (2, 4)
			end

			if coke > 0 and  weed == 0 and meth == 0 and opium > 0 then
				if math.random (1, 2) == 1 then
					kindDrug = 4
				else
					kindDrug = 1
				end
			end

			if coke > 0 and  weed == 0 and meth > 0 and opium == 0 then
				if math.random (1, 2) == 1 then
					kindDrug = 3
				else
					kindDrug = 1
				end
			end

			if coke == 0 and  weed > 0 and meth == 0 and opium > 0 then
				if math.random (1, 2) == 1 then
					kindDrug = 2
				else
					kindDrug = 4
				end
			end

			if coke > 0 and  weed > 0 and meth == 0 and opium > 0 then
				local r = math.random (1, 3)
				if r == 1 then
					kindDrug = 1
				elseif r == 2 then
					kindDrug = 2
				else
					kindDrug = 4
				end
			end

			if coke > 0 and  weed > 0 and meth == 0 and opium == 0 then
				kindDrug = math.random (1, 2)
			end

			if coke > 0 and  weed > 0 and meth > 0 and opium == 0 then
				kindDrug = math.random (1, 3)
			end

			if coke > 0 and  weed == 0 and meth == 0 and opium == 0 then
				kindDrug = 1
			end

			if coke == 0 and  weed > 0 and meth == 0 and opium == 0 then
				kindDrug = 2
			end

			if coke == 0 and  weed == 0 and meth > 0 and opium == 0 then
				kindDrug = 3
			end

			if coke == 0 and  weed == 0 and meth == 0 and opium > 0 then
				kindDrug = 4
			end
			
			
			if coke >= 1 and success == true and kindDrug == 1 then
				if coke >= 1 and coke <= 3 then 
					local drugQuantity = coke
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste cocaína por $" .. paymentc*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('coke_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentc*drugQuantity)
					selling = false
				end
				if coke > 3 and coke < 5 then 
					local drugQuantity = math.random (2, 4)
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste cocaína por $" .. paymentc*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('coke_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentc*drugQuantity)
					selling = false
				end

				if coke >= 5 then
					local drugQuantity = 5
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste cocaína por $" .. paymentc*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('coke_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentc*drugQuantity)
					selling = false
				end
			elseif weed >= 1 and success == true and kindDrug == 2 then
				if weed >= 1 and weed <= 3 then 
						local drugQuantity = weed
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Descargaste un poco de marihuana por $" .. paymentw*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					TriggerClientEvent("test", source)
					xPlayer.removeInventoryItem('marijuana', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentw*drugQuantity)
					selling = false
				end

				if weed > 3 and weed < 5 then
					local drugQuantity = math.random (2, 4)
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Descargaste un poco de marihuana por $" .. paymentw*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					TriggerClientEvent("test", source)
					xPlayer.removeInventoryItem('marijuana', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentw*drugQuantity)
					selling = false

				end

				if weed >= 5 then
					local drugQuantity = 5
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Descargaste un poco de marihuana por $" .. paymentw*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					TriggerClientEvent("test", source)
					xPlayer.removeInventoryItem('marijuana', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentw*drugQuantity)
					selling = false

				end

				elseif meth >= 1 and success == true and kindDrug == 3 then
				
					if meth >= 1 and meth <= 3 then 
						local drugQuantity = meth
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes meta por $" .. paymentm*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('meth_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentm*drugQuantity)
					selling = false
					end

					if meth > 3 and meth < 5 then 
						local drugQuantity = math.random (2, 4)
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes meta por $" .. paymentm*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('meth_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentm*drugQuantity)
						selling = false
					end

					if meth >= 5 then 
						local drugQuantity = 5
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes meta por $" .. paymentm*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
					TriggerClientEvent("animation", source)
					xPlayer.removeInventoryItem('meth_pooch', drugQuantity)
					xPlayer.addAccountMoney('black_money', paymentm*drugQuantity)
					selling = false
					end

					
				elseif opium >= 1 and success == true and kindDrug == 4 then
					if opium >= 1 and opium <= 3 then 
						local drugQuantity = opium

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes opio por for $" .. paymento*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('opium_pooch', drugQuantity)
						xPlayer.addAccountMoney('black_money', paymento*drugQuantity)
						selling = false
					end
					if opium > 3 and opium < 5 then 
						local drugQuantity = math.random (2, 4)

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes opio por for $" .. paymento*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('opium_pooch', drugQuantity)
						xPlayer.addAccountMoney('black_money', paymento*drugQuantity)
						selling = false
					end
					if opium >= 5 then 
						local drugQuantity = 5
						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendistes opio por for $" .. paymento*drugQuantity ,
							type = "success",
							progressBar = false,
							queue = "lmao",
							timeout = 2000,
							layout = "CenterLeft"
					})
						TriggerClientEvent("animation", source)
						xPlayer.removeInventoryItem('opium_pooch', drugQuantity)
						xPlayer.addAccountMoney('black_money', paymento*drugQuantity)
						selling = false
					end
				

				elseif selling == true and success == false and notintrested == true then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "No esta interesado",
						type = "error",
						progressBar = false,
						queue = "lmao",
						timeout = 2000,
						layout = "CenterLeft"
				})
				selling = false
				elseif meth < 1 and coke < 1 and weed < 1 and opium < 1 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
					text = "No tienes drogas",
					type = "error",
					progressBar = false,
					queue = "lmao",
					timeout = 2000,
					layout = "CenterLeft"
				})
				elseif copscalled == true and success == false then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
						text = "Han llamado a la policia",
						type = "error",
						progressBar = false,
						queue = "lmao",
						timeout = 2000,
						layout = "CenterLeft"
				})
				TriggerClientEvent("notifyc", source)
				selling = false
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
		timeout = 2000,
		layout = "CenterLeft"
	})
end)

RegisterNetEvent('checkD')
AddEventHandler('checkD', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local foodExist = false
	local drinkExist = false	
	local meth = xPlayer.getInventoryItem('meth_pooch').count
	local coke 	  = xPlayer.getInventoryItem('coke_pooch').count
	local weed = xPlayer.getInventoryItem('marijuana').count
	local weed_dirty = xPlayer.getInventoryItem('weed_pooch').count
	local opium = xPlayer.getInventoryItem('opium_pooch').count

	local pollofrito = xPlayer.getInventoryItem('pollofrito').count
	local sprite 	  = xPlayer.getInventoryItem('sprite').count
	local pepsicola = xPlayer.getInventoryItem('pepsicola').count
	local hotdog = xPlayer.getInventoryItem('hotdog').count

	if pollofrito > 0 or hotdog > 0 then
		foodExist = true		
	end

	if sprite > 0 or pepsicola > 0 then
		drinkExist = true		
	end

	if meth >= 1 or coke >= 1 or weed >= 1 or opium >= 1 or weed_dirty >= 1 then
		if(foodExist or drinkExist) then
			TriggerClientEvent("checkR", source, false)
		else
			TriggerClientEvent("checkR", source, true)
		end
	else
		TriggerClientEvent("checkR", source, false)
	end

end)

RegisterNetEvent('checkFoodDrugs')
AddEventHandler('checkFoodDrugs', function()
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
	local weed_dirty = xPlayer.getInventoryItem('weed_pooch').count
	local weed = xPlayer.getInventoryItem('marijuana').count
	local opium = xPlayer.getInventoryItem('opium_pooch').count

	if meth > 0 or coke > 0 or weed > 0 or opium > 0 or weed_dirty then
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

