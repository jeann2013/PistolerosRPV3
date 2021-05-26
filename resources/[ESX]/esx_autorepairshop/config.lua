Config = {}

Config.Locale = 'en'

Config.Zones = {

	LSCM = {

        Blip = {
			Sprite  = 402,
			Display = 4,
			Scale   = 0.7,
			Colour  = 29
		},

		MechInteract = {
			vector3(1139.15, -778.52, 57.18),
            vector3(1143.6, -778.52, 57.18),
            vector3(2006.14,3798.35, 32.18),
            vector3(-1149.83,-1982.01,13.16),
            vector3(103.47,6622.93,31.83),
		},

	}

}
-- Text configs
Config.Red = 255
Config.Green = 255
Config.Blue = 255
Config.Alpha = 160

Config.TextX = 0.3
Config.TextY = 0.3

Config.FontType = 6

Config.DrawDistanceText = 5

--Rectangle or background of text
Config.RectangleX = 0.0115

Config.RectangleH = 0.027
Config.RectangleW = 0.02

Config.RectRed = 28
Config.RectGreen = 28
Config.RectBlue = 28
Config.RectAlpha = 95

--Other
Config.InteractDistance = 3

Config.useMythic = true -- this thing here makes script use mythic_notify. If you want pNotify then leave it on true and just turn on usepNotify
Config.usepNotify = false -- this thing here makes script use pNotify. If you want pNotify then leave it on true and turn on useMythic. Else leave this on false.

Config.ActiveLSC = true -- If you have it one true then script will block script if there are enough mechanics in service
Config.LSCinService = 1 -- Number of mechanics that are needed for script to not work
Config.LSCrefreshtime = 3000 -- This is time it refreshes active LSCM in service

Config.AddBlips = true -- If you want blips then leave it on true, else false

Config.WaitTime = 10000 -- How long you need to wait for mechanic to repair your car

Config.removeMoney = true -- if you want script to remove money then leave it on true
Config.removeAmmount = 6000 -- how much money does it take when repairing your car
