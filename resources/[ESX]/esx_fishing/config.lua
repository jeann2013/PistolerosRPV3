Config = {}
	---------------------------------------------------------------
	--=====How long should it take for player to catch a fish=======--
	---------------------------------------------------------------
	--Time in miliseconds
	Config.FishTime = {a = 9000, b = 16000}
	
	--------------------------------------------------------
	--=====Prices of the items players can sell==========--
	--------------------------------------------------------
	--First amount minimum price second maximum amount (the amount player will get is random between those two numbers)
	Config.FishPrice = {a = 2500, b = 3500} --Will get clean money THIS PRICE IS FOR EVERY 5 FISH ITEMS (5 kg)
	Config.StingrayPrice = {a = 3501, b = 4500} --Will get money
	Config.TurtlePrice = {a = 4501, b = 5000} --Will get dirty money
	Config.SharkPrice = {a = 5001, b = 6000} --Will get dirty money
	Config.StingrayPrice = {a =  5001, b = 6000} --Will get money
	Config.SharktigerPrice = {a =  5001, b = 6000} --Will get dirty money
	Config.SharkhammerPrice = {a =  5001, b = 6000} --Will get dirty money
	Config.DolphinPrice = {a =  5001, b = 6000} --Will get dirty money
	Config.KillerwhalePrice = {a = 6001, b = 6500} --Will get dirty money

	--------------------------------------------------------
	--=====Locations where players can sell stuff========--
	--------------------------------------------------------

	Config.SellFish = {x = -3251.2, y = 991.5, z = 11.49} --Place where players can sell their fish
	Config.SellTurtle = {x = 3804.0, y = 4443.3, z = 3.0} --Place where players can sell their turtles 
	Config.SellShark = {x = 2517.6 , y = 4218.0, z = 38.8} --Place where players can sell their sharks

	Config.SellSharkTiger = {x = 3726.68 , y = 4540.50, z = 21.40} --Place where players can sell their sharks tiger
	Config.SellStingrey = {x = 3673.09 , y = 4566.99, z = 25.20} --Place where players can sell their Stingrey
	Config.SellDolphin = {x = 3304.17 , y = 5184.93, z = 19.71} --Place where players can sell their Dolphin
	Config.SellKillerWhale = {x = 2472.77 , y = 4449.06, z = 35.38} --Place where players can sell their Killer Whale	
	Config.SellSharkHammer = {x = 2566.52 , y = 4283.27, z = 41.97} --Place where players can sell their Shark Hammer
	Config.CreateCevicheIllegal = {x = 2641.70 , y = 4235.31, z = 45.49} --Place where players can sell their Shark Hammer
	
	--------------------------------------------------------
	--=====Locations where players can rent boats========--
	--------------------------------------------------------
Config.MarkerZones = { 
	
    {x = -3426.7   ,y = 955.66 ,z = 7.35, xs = -3426.2  , ys = 942.4, zs = 1.1 },
	{x = -732.9     ,y = -1309.7 ,z = 4.0, xs = -725.7    , ys = -1351.5, zs = 0.5 },  
	{x = -1607.6      ,y =  5252.8 ,z = 3.0, xs = -1590.2      , ys = 5278.8, zs = 1.0 },
	{x = 3855.0        ,y =  4463.7 ,z = 1.6, xs = 3885.2       , ys =  4507.2, zs = 1.0 },
	{x = 1330.8        ,y =  4226.6 ,z = 32.9, xs = 1334.2         , ys =  4192.4, zs = 30.0 },
	

}