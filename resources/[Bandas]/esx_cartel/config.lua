Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'es'

Config.CartelStations = {

  Cartel = {

    Blip = {
      Pos     = { x = -3233.61, y = 814.39, z = 14.08 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_SAWNOFFSHOTGUN',       price = 9000 },
      { name = 'WEAPON_PISTOL50',     price = 30000 },
      { name = 'WEAPON_BULLPUPSHOTGUN',       price = 1125000 },
      { name = 'WEAPON_COMPACTRIFLE',     price = 1500000 },     
    },

	  AuthorizedVehicles = {
		  { name = 'cognoscenti2',  label = 'Véhicule Blindé' },
		  { name = 'Manchez',    label = 'Moto' },
		  { name = 'Contender',   label = '4X4' },
		  { name = 'felon',      label = 'Véhicule Civil' },
	  },

    Cloakrooms = {
      { x = 1395.71, y = 11057.21, z = 1113.34 },
    },

    Armories = {
      { x = -3217.92, y = 7803.32, z = 14.08 },
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
        Spawner    = { x = 1441.96, y = 1122.40, z = 114.32 },
        SpawnPoint = { x = 1453.71, y = 1113.10, z = 113.33 },
        Heading    = 359.40,
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
      { x = -3233.61, y = 814.39, z = 13.15 }
    },

  },

}
