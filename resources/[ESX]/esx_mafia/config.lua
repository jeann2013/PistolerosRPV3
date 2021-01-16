Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
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

    Cloakrooms = {
      { x = 1402.01, y = 1163.08, z = 114.34 },
    },

    Armories = {
      { x = 1395.69, y = 1148.81, z = 114.34 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1415.61, y = 1116.38, z = 114.84 },
        SpawnPoint = { x = 1404.68, y = 1119.14, z = 114.84 },
        Heading    = 114.83,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 1455.1, y = 1112.72, z = 114.33 },
        SpawnPoint = { x = 1455.1, y = 1112.72, z = 114.33 },
        Heading    = 114.83,
      }
    },

    VehicleDeleters = {
      { x = 1413.39, y = 1110.12, z = 113.83 },
      { x = 1402.62, y = 1110.35, z = 113.83 },
    },

    BossActions = {
      { x = 1396.36, y = 1160.45, z = 114.33 }
    },

  },

}
