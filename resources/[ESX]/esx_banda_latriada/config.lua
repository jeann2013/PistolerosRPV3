Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerSizeHeli                 = { x = 6.0, y = 6.0, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = 10
Config.Locale                     = 'es'

Config.MafiaStations = {

  Mafia = {

    Blip = {
      Pos     = { x = -3233.61, y = 814.39, z = 14.08 },
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
		  { name = 'frogger',      label = 'Helicoptero 4 pasajeros' },
	  },
    Cloakrooms = {
      { x = 1395.71, y = 1157.21, z = 1113.34 },
    },

    Armories = {
      { x = -3217.92, y = 783.32, z = 14.08 },
    },

    Vehicles = {
      {
        Spawner    = { x = -3215.46, y = 837.34, z = 8.93 },
        SpawnPoint = { x = -3205.64, y = 816.75, z = 8.93 },
        Heading    = 214.06,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 1441.96, y = 1122.40, z = 1213.84 },
        SpawnPoint = { x = 1453.71, y = 1113.10, z = 1213.33 },
        Heading    = 359.40,
      }
    },

    HelicoptersMountain = {
      {
        Spawner    = { x = 182.74, y = 5376.15, z = 5224.56 },
        SpawnPoint = { x = 170.78, y = 5379.75, z = 5222.47 },
        Heading    = 77.72,
      }
    },

    VehicleDeleters = {
      { x = -3209.66, y = 820.98, z = 8.93 },
      { x = -3205.57, y = 823.72, z = 8.93 },
    },

    HeliDeleters = {
      { x = 14605.61, y = 1112.60, z = 1213.33 },
    },

    HeliDeletersMountain = {
      { x = 1700.78, y = 5379.75, z = 5222.47 },
    },

    BossActions = {
      { x = -3233.61, y = 814.39, z = 15.08 }
    },

  },

}
