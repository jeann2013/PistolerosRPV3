Config = {
	Locale = "en",
	DrawDistance = 100,
	Price = 3000,

	-- This is the multiplier of price to pay when the car is damaged
	-- 100% damaged means 1000 * Multiplier
	-- 50% damaged means 500 * Multiplier
	-- Etc.
	RepairMultiplier = 1,

	BlipInfos = {
		Sprite = 290,
		Color = 38
	},

	BlipPound = {
		Sprite = 67,
		Color = 64
	}
}

Config.Garages = {

	Garaje_Centre = {
		Pos = {x = 215.800, y = -810.057, z = 29.727},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 229.700, y = -800.1149, z = 29.5722},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading = 157.84
		},
		DeletePoint = {
			Pos = {x = 215.124, y = -791.377, z = 29.646},
			Color = {r = 255, g = 0, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			
		},
		MunicipalPoundPoint = {
			Pos = {x = 215.800, y = -810.057, z = 29.727},
			Color = {r = 25, g = 25, b = 112},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x = 229.700, y = -800.1149, z = 29.5722},
			Color = {r = 0, g = 255, b = 0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading = 299.42
		},
	},
	
	Garaje_Paleto = {
		Pos = {x=  105.359, y = 6613.586, z = 31.3973},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 128.7822, y = 6622.9965, z = 30.7828},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = 126.3572, y = 6608.4150, z = 30.8565},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = 106.52, y = 6612.72, z = 30.98},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = 128.7822, y = 6622.9965, z = 30.7828},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garage_Poissoniers = {
		Pos = {x = -1511.6556396484, y = 5009.875, z = 61.800533294678},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = -1511.6556396484,y = 5009.875,z = 61.800533294678},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = -1524.1857910156,y = 4997.2885742188,z = 61.598690032959},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = -1504.87,y = 5021.05,z =61.66},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = -1511.6556396484,y = 5009.875,z = 61.800533294678},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garage_SandyShore = {
		Pos = {x = 1501.2, y = 3762.19, z = 33.0},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = 1497.15, y = 3761.37, z = 32.8},
			Color = {r = 0, g = 255,b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = 1504.1, y = 3765.55, z = 32.8},
			Color = {r = 255, g = 0, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = 1498.40, y = 3753.07, z = 32.90},
			Color = {r = 25, g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = 1497.15, y = 3761.37, z = 32.8},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},
	
	Garaje_Aeroport = {
		Pos = {x = -977.21661376953, y = -2710.3798828125, z = 12.853487014771},
		Color = {r = 204, g = 204, b = 0},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Marker = 1,
		
		SpawnPoint = {
			Pos = {x = -977.21661376953, y = -2710.3798828125, z = 12.853487014771},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x = -966.88208007813, y = -2709.9028320313, z = 12.83367729187},
			Color = {r = 255,g = 0,b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x = -955.64, y = -2707.40, z = 12.83},
			Color = {r = 25,g = 25, b = 112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},	
		SpawnMunicipalPoundPoint = {
			Pos = {x = -977.21661376953, y = -2710.3798828125, z = 12.853487014771},
			Color = {r = 0, g = 255, b = 0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
	},

	Garaje_Galaxy = {
		Pos = {x=-335.88, y=274.68, z=85.9},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 1,
		SpawnPoint = {
			Pos = {x=-334.66, y= 288.39, z= 84.80},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=-335.75, y=273.73, z=84.80},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x=-345.39, y=265.73, z=84.34},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x=-334.66, y= 288.39, z= 84.80},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading=299.42
		},
	},

	Garaje_Galaxy2 = {
		Pos = {x=-579.28, y=329.84, z=84.76},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 1,
		SpawnPoint = {
			Pos = {x=-570.19, y= 317.82, z= 83.47},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=-567.86, y=328.39, z=83.46},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x=-570.19, y= 317.82, z= 83.47},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x=490.942, y=-1313.067, z=27.964},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading=299.42
		},
	},

	Garaje_Integrity = {
		Pos = {x=50.15, y=-616.37, z=31.63},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 1,
		SpawnPoint = {
			Pos = {x=35.53, y= -604.90, z=30.63},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=51.68, y=-618.14, z=30.63},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x=54.98, y=-609.32, z=30.63},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x=35.53, y= -604.90, z=30.63},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading=299.42
		},
	},

	Garaje_LowEndApartment = {
		Pos = {x=307.43, y=-1075.11, z=29.35},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 1,
		SpawnPoint = {
			Pos = {x=307.43, y=-1075.11, z=28.35},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=306.8, y=-1108.57, z=28.38},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x=308.08, y=-1115.28, z=28.33},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x=307.43, y=-1075.11, z=28.35},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading=299.42
		},
	},
	Garaje_Motel = {
		Pos = {x=324.09, y=-214.06, z=53.09},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Marker = 1,
		SpawnPoint = {
			Pos = {x=332.05, y=-206.34, z=53.09},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=324.09, y=-214.06, z=53.09},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		MunicipalPoundPoint = {
			Pos = {x=323.77, y=-203.03, z=53.09},
			Color = {r=25,g=25,b=112},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		SpawnMunicipalPoundPoint = {
			Pos = {x=332.05, y=-206.34, z=53.09},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1,
			Heading=299.42
		},
	},
}
