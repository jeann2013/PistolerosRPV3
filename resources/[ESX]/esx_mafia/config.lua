Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerSizeHeli                 = { x = 6.0, y = 6.0, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = 10
Config.Locale                     = 'es'

Config.MafiaStations = {

  Mafia = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 0 },
      { name = 'WEAPON_GUSENBERG',          price = 750000 },
      { name = 'WEAPON_FLASHLIGHT',       price = 1500 },
      { name = 'WEAPON_SWITCHBLADE',      price = 1500 },
	    { name = 'WEAPON_PUMPSHOTGUN',          price = 750000 },
		  { name = 'WEAPON_ASSAULTRIFLE',          price = 950000 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'schafter3',  label = 'Véhicule Civil' },
		  { name = 'btype',      label = 'Roosevelt' },
		  { name = 'sandking',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
		  { name = 'guardian',   label = 'Grand 4x4' },
		  { name = 'burrito3',   label = 'Fourgonnette' },
		  { name = 'mesa',       label = 'Tout-Terrain' },
	  },
    AuthorizedHelicopters = {
		  { name = 'havok',  label = 'Helicoptero una persona' },
		  { name = 'Frogger',      label = 'Helicoptero 4 pasageros' },
	  },
    Cloakrooms = {
      { x = 1395.71, y = 1157.21, z = 113.34 },
    },

    Armories = {
      { x = 1395.69, y = 1148.81, z = 113.34 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1415.61, y = 1116.38, z = 113.84 },
        SpawnPoint = { x = 1404.68, y = 1119.14, z = 113.84 },
        Heading    = 114.83,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 1441.96, y = 1122.40, z = 113.84 },
        SpawnPoint = { x = 1453.71, y = 1113.10, z = 113.33 },
        Heading    = 359.40,
      }
    },

    HelicoptersMountain = {
      {
        Spawner    = { x = 182.74, y = 5376.15, z = 524.56 },
        SpawnPoint = { x = 187.27, y = 5378.44, z = 525.91 },
        Heading    = 77.72,
      }
    },

    VehicleDeleters = {
      { x = 1398.67, y = 1120.04, z = 113.84 },
      { x = 1399.10, y = 1116.87, z = 113.84 },
    },

    HeliDeleters = {
      { x = 1465.61, y = 1112.60, z = 113.33 },
    },

    HeliDeletersMountain = {
      { x = 170.78, y = 5379.75, z = 522.47 },
    },

    BossActions = {
      { x = 1396.36, y = 1160.45, z = 113.33 }
    },

  },

}
