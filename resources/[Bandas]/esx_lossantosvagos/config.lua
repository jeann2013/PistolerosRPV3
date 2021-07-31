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
Config.ShowArmory                 = true
Config.BuyArmory                  = false
Config.ShowCloset                  = false
Config.ShowHeliPort               = false
Config.MaxInService               = 10
Config.Locale                     = 'es'

Config.LaPinguGangStations = {

  LaPinguGang = {

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
		  { name = 'frogger',      label = 'Helicoptero 4 pasajeros' },
	  },
    Cloakrooms = {
      { x = -811.34, y = 175.39, z = 76.75 },
    },

    Armories = {
      { x = -811.58, y = 175.25, z = 75.75 },
    },

    Vehicles = {
      {
        Spawner    = { x = -823.78, y = 183.09, z = 70.60 },
        SpawnPoint = { x = -827.20, y = 176.81, z = 70.58 },
        Heading    = 153.55,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 144441.96, y = 1122.40, z = 112.32 },
        SpawnPoint = { x = -827.20, y = 176.81, z = 70.58 },
        Heading    = 153.55,
      }
    },

    HelicoptersMountain = {
      {
        Spawner    = { x = 182.74, y = 5376.15, z = 525.56 },
        SpawnPoint = { x = 170.78, y = 5379.75, z = 523.47 },
        Heading    = 77.72,
      }
    },

    VehicleDeleters = {
      { x = -811.12, y = 187.7, z = 71.46 },
      { x = -811.12, y = 187.7, z = 71.46 },
    },

    HeliDeleters = {
      { x = 1465.61, y = 1112.60, z = 113.33 },
    },

    HeliDeletersMountain = {
      { x = 170.78, y = 5379.75, z = 522.47 },
    },

    BossActions = {
      { x = -801.58, y = 186.31, z = 71.40 },
    },

  },

}
