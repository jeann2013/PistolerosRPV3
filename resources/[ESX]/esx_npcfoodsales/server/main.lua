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
            timeout = 2500,
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

		local paymentpollofrito = 179	
		local paymentsprite = 179	
		local paymentpepsicola = 179	
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

		if pollofrito > 0 or hotdog > 0 then
			foodExist = true		
		end

		if sprite > 0 or pepsicola > 0 then
			drinkExist = true		
		end

		if foodExist and drinkExist then

			if pollofrito >= 1 and pollofrito <= 3 then
				quantityPollofrito = math.random (1, 3)
			end

			if pollofrito > 3 then
				quantityPollofrito = 4
			end		

			if hotdog >= 1 and hotdog <= 3 then
				quantityHotdog = math.random (1, 3)
			end

			if hotdog > 3 then
				quantityHotdog = 4
			end	
			-------------
			if sprite >= 1 and sprite <= 3 then
				quantitySprite = math.random (1, 3)
			end

			if sprite > 3 then
				quantitySprite = 4
			end		

			if pepsicola >= 1 and pepsicola <= 3 then
				quantityPepsicola = math.random (1, 3)
			end

			if pepsicola > 3 then
				quantityPepsicola = 4
			end	
			
			if quantityPollofrito > 0 and quantityHotdog > 0 and quantitySprite > 0 and  quantityPepsicola > 0 then
					local kindFood = math.random (1, 2)
					if kindFood == 1 then

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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
								text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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

					local kindDrink = math.random (1, 2)
					if kindDrink == 1 then

						TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
						TriggerClientEvent("pNotify:SendNotification", source, {
								text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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
								text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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

				local kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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
				local kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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

				local kindDrink = 2
				if kindDrink == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = 1
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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

				local kindDrink = math.random (1, 2)
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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
							text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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

				local kindDrink = math.random (1, 2)
				if kindDrink == 1 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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
							text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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
							text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = 2
				if kindFood == 2 then
					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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

				local kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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
				local kindFood = math.random (1, 2)
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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
							text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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
							text = "Vendiste Pepsi-Cola por $" .. paymentpepsicola*quantityPepsicola ,
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
				local kindFood = math.random (1, 2)
				if kindFood == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Pollo Frito por $" .. paymentpollofrito*quantityPollofrito ,
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
							text = "Vendiste HotDog por $" .. paymenthotdog*quantityHotdog ,
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

				local kindDrink = 1
				if kindDrink == 1 then

					TriggerClientEvent("pNotify:SetQueueMax", source, "lmao", 5)
					TriggerClientEvent("pNotify:SendNotification", source, {
							text = "Vendiste Sprite por $" .. paymentsprite*quantitySprite ,
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


RegisterNetEvent('checkD')
AddEventHandler('checkD', function()
	local xPlayer = ESX.GetPlayerFromId(source)
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

	if foodExist and drinkExist then
		TriggerClientEvent("checkR", source, true)
	else
		TriggerClientEvent("checkR", source, false)
	end

end)
