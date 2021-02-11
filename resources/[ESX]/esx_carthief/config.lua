Config              = {}
Config.DrawDistance = 100.0
Config.CopsRequired = 1
Config.BlipUpdateTime = 3000 --In milliseconds. I used it on 3000. If you want instant update, 50 is more than enough. Even 100 is good. I hope it doesn't kill FPS and the server.
Config.CooldownMinutes = 15
Config.Locale = 'es'
Config.kindMoney = 2 --1 is black_money 2 is money

Config.Zones = {
	VehicleSpawner = {
		Pos   = {x = 759.01, y = -3195.18, z = 4.97},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Colour    = 6, --BLIP
		Id        = 229, --BLIP
	},
	VehicleSpawner2 = {
		Pos   = {x = 2526.33, y =  4111.23, z = 37.63},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Colour    = 6, --BLIP
		Id        = 230, --BLIP
	},
	VehicleSpawner3 = {
		Pos   = {x = 1522.09, y = 3794.20, z = 32.51},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Colour    = 6, --BLIP
		Id        = 230, --BLIP
	},
}

Config.VehicleSpawnPoint = {
      Pos   = {x = 767.71, y = -3195.20, z = 5.50, alpha = 0.00}, --alpha is the orientation of the car
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Type  = -1,
}

Config.VehicleSpawnPoint2 = {
	Pos   = {x = 2489.44, y = 4118.63, z = 38.10, alpha = 0.00}, --alpha is the orientation of the car
	Size  = {x = 3.0, y = 3.0, z = 1.0},
	Type  = -1,
}

Config.VehicleSpawnPoint3 = {
	Pos   = {x = 1503.21, y = 3763.96, z = 34.00, alpha = 0.00}, --alpha is the orientation of the car
	Size  = {x = 3.0, y = 3.0, z = 1.0},
	Type  = -1,
}

--2504.20 4079.93 38.63 328.43

Config.Delivery = {
	--House in Paleto 12.94KM
	Delivery1 = {
		Pos      = {x = -437.56, y = 6254.53, z = 29.02},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 40000,
		Cars = {'veneno','deveste','italigtb2','entity2','visione'},
	},
	--Great Ocean Highway 10.47KM
	Delivery2 = {
		Pos      = {x = -2177.51, y = 4269.51, z = 47.93},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 35000,
		Cars = {'nero','chiron','nero2','specter2','tezeract'},
	},
	--Lighthouse 9.61KM
	Delivery3 = {
		Pos      = {x = 3333.51, y = 5159.91, z = 17.20},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 30000,
		Cars = {'tyrant','rmodlp770','lamboavj','italigtb','gp1'},
	},
	--Desert
	--Trevor Airfield 9.22KM
	Delivery4 = {
		Pos      = {x = 2130.68, y = 4781.32, z = 39.87},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 25000,
		Cars = {'zentorno','t20','infernus2','18performante','vagner'},
	},
	--Marina Drive Desert 8.15KM
	Delivery5 = {
		Pos      = {x = 895.02, y = 3603.87, z = 31.72},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 20000,
		Cars = {'2018zl1','tempesta','penetrator','ruiner2','schlagen'},
	},
	Delivery6 = {
		Pos      = {x = 2346.02, y = 2625.45, z = 45.67},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 15000,
		Cars = {'fcr2','diablous','20r1','diablous2','fcr'},
	},
}
