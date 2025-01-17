Config                            = {}

Config.DrawDistance               = 3.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = false
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false -- only turn this on if you are using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.MaxInService               = -1
Config.Locale                     = 'es'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.130,  -979.558, 30.711),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},		
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 100 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 100000 },
			{ name = 'WEAPON_ASSAULTSMG',       price = 2500000 },
			{ name = 'WEAPON_ASSAULTRIFLE',     price = 3500000 },
			{ name = 'WEAPON_SPECIALCARBINE',      price = 4500000 },
			{ name = 'WEAPON_STUNGUN',          price = 300000 },
			{ name = 'WEAPON_FLASHLIGHT',       price = 300000 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ name = 'WEAPON_FLAREGUN',         price = 60 },
			{ name = 'WEAPON_STICKYBOMB',       price = 130000 },
			{ name = 'GADGET_PARACHUTE',        price = 30000 },
		},

		Cloakrooms = {
			{ x = 461.94, y = -999.30, z = 30.69 },
		},

		Armories = {
			{ x = 474.93, y = -990.40, z = 25.27 },
		},

		Vehicles = {
			{
				Spawner    = { x = 454.69, y = -1017.4, z = 27.430 },
				SpawnPoint = { x = 438.42, y = -1018.3, z = 27.757 },
				Heading    = 90.0,
			}
		},

		Helicopters = {
			{
				Spawner    = { x = 466.477, y = -982.819, z = 42.691 },
				SpawnPoint = { x = 450.04, y = -981.14, z = 42.691 },
				Heading    = 0.0,
			}
		},

		VehicleDeleters = {
			{ x = 462.74, y = -1014.4, z = 27.065 }			
		},

		BossActions = {
			{ x = 463.26, y = -985.71, z = 30.73 }
		},

	},

}

Config.AuthorizedVehicles = {
	-- Shared = {
	-- 	{
	-- 		model = 'pbike',
	-- 		label = 'Bicicleta de policia'
	-- 	},
	-- 	{
	-- 		model = 'pd_dirtbike',
	-- 		label = 'Moto Policia de montaña'
	-- 	},		
	-- 	{
	-- 		model = 'code398cvpi',
	-- 		label = 'Auto patrulla'
	-- 	},
	-- },

	recruit = {
		{
			model = 'pbike',
			label = 'Bicicleta de policia'
		},
		{
			model = 'code3bmw',
			label = 'Moto Policia BMW'
		},
		{
			model = 'pd_dirtbike',
			label = 'Moto Policia de montaña'
		},		
		{
			model = 'code398cvpi',
			label = 'Auto patrulla'
		},
	},

	officer = {
		{
			model = 'pbike',
			label = 'Bicicleta de policia'
		},
		{
			model = 'code3bmw',
			label = 'Moto Policia BMW'
		},
		{
			model = 'pd_dirtbike',
			label = 'Moto Policia de montaña'
		},		
		{
			model = 'code398cvpi',
			label = 'Auto patrulla'
		},
		{
			model = 'code318tahoe',
			label = 'Camioneta policia Tahoe'
		},
		{
			model = 'code3ram',
			label = 'Camioneta policia para campo Raptor'
		},
		{
			model = 'code318charg',
			label = 'Auto policia Charger'
		},
		{
			model = 'APOLICECOQ',
			label = 'Auto policia de Persecucion Nativo'
		},
		
	},

	sergeant = {
		{
			model = 'pbike',
			label = 'Bicicleta de policia'
		},
		{
			model = 'pd_dirtbike',
			label = 'Moto Policia de montaña'
		},		
		{
			model = 'code3bmw',
			label = 'Moto Policia BMW'
		},
		{
			model = 'code398cvpi',
			label = 'Auto patrulla'
		},
		{
			model = 'code318tahoe',
			label = 'Camioneta policia Tahoe'
		},
		{
			model = 'code3ram',
			label = 'Camioneta policia para campo Raptor'
		},
		{
			model = 'code318charg',
			label = 'Auto policia Charger'
		},
		{
			model = 'code320exp',
			label = 'Auto policia Exp'
		},
		{
			model = 'apolicecoq',
			label = 'Auto policia de Persecucion Nativo'
		},
		{
			model = 'pbus',
			label = 'Bus de policia'
		},
		{
			model = 'riot',
			label = 'Camion anti-disturbio'
		},
		
	},

	lieutenant = {
		{
			model = 'pbike',
			label = 'Bicicleta de policia'
		},
		{
			model = 'pd_dirtbike',
			label = 'Moto Policia de montaña'
		},		
		{
			model = 'code3bmw',
			label = 'Moto Policia BMW'
		},
		{
			model = 'code398cvpi',
			label = 'Auto patrulla'
		},
		{
			model = 'code318tahoe',
			label = 'Camioneta policia Tahoe'
		},
		{
			model = 'code3ram',
			label = 'Camioneta policia para campo Raptor'
		},
		{
			model = 'code318charg',
			label = 'Auto policia Charger'
		},
		{
			model = 'code320exp',
			label = 'Auto policia Exp'
		},
		{
			model = 'polf430',
			label = 'Auto policia persecucion (Ferrari)'
		},
		{
			model = 'polmp4',
			label = 'Auto policia persecucion (Mclaren)'
		},
		{
			model = 'pol718',
			label = 'Auto policia persecucion (Porsche)'
		},
		{
			model = 'pbus',
			label = 'Bus de policia'
		},
		{
			model = 'riot',
			label = 'Camion anti-disturbio'
		},
	},

	boss = {	
					
		{
			model = 'pbike',
			label = 'Bicicleta de policia'
		},
		{
			model = 'pd_dirtbike',
			label = 'Moto Policia de montaña'
		},		
		{
			model = 'code3bmw',
			label = 'Moto Policia BMW'
		},		
		{
			model = 'code398cvpi',
			label = 'Auto patrulla'
		},
		{
			model = 'code318tahoe',
			label = 'Camioneta policia Tahoe'
		},
		{
			model = 'code3ram',
			label = 'Camioneta policia para campo Raptor'
		},
		{
			model = 'code318charg',
			label = 'Auto policia Charger'
		},
		{
			model = 'code320exp',
			label = 'Auto policia Exp'
		},
		{
			model = 'apolicecoq',
			label = 'Auto policia de Persecucion Nativo'
		},
		{
			model = 'polf430',
			label = 'Auto policia persecucion (Ferrari)'
		},
		{
			model = 'polmp4',
			label = 'Auto policia persecucion (Mclaren)'
		},
		{
			model = 'pol718',
			label = 'Auto policia persecucion (Porsche)'
		},
		{
			model = 'police5',
			label = 'Auto policia persecucion (Lambo Aventador)'
		},
		{
			model = 'pbus',
			label = 'Bus de policia'
		},
		{
			model = 'riot',
			label = 'Camion anti-disturbio'
		},			
	}
}


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	cadet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	police_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	commandant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}
