Config                            = {}
Config.DrawDistance               = 3.0
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

Config.LosSantosVagosStations = {

  Kap = {

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
      { x = -3213.11, y = 778.75, z = 13.09 },
    },

    Armories = {
      { x = -3218.78, y = 783.97, z = 13.09 },
    },

    Vehicles = {
      {
        Spawner    = { x = -3198.17, y = 835.93, z = 7.93 },
        SpawnPoint = { x = -3204.73, y = 816.88, z = 7.93 },
        Heading    = 210.97,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 13.43, y = 551.18, z = 176.42 },
        SpawnPoint = { x = 24.95, y = 542.83, z = 176.03 },
        Heading    = 122.26,
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
      { x = -3216.12, y = 833.46, z = 7.93 },
      { x = -3212.61, y = 835.99, z = 8.93 },
    },

    HeliDeleters = {
      { x = 1465.61, y = 1112.60, z = 113.33 },
    },

    HeliDeletersMountain = {
      { x = 170.78, y = 5379.75, z = 522.47 },
    },

    BossActions = {
      { x = -3233.64, y = 814.15, z = 13.08 },
    },

  },

}
