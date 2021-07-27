Config = {}

Config.Locale = 'es'

Config.WithDrugDealer = false

Config.Delays = {
	WeedProcessing = 1000 * 7,
	Processing = 1000 * 7,
}

Config.DrugDealerItems = {
	marijuana = 91
}

Config.LicenseEnable = true -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000},
	coca_processing = {label = _U('license_coca'), price = 25000},
	opio_processing = {label = _U('license_opio'), price = 25000},
	metha_processing = {label = _U('license_metha'), price = 25000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	WeedField = {coords = vector3(2220.72, 5582.52, 53.81), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 100.0,visible = true},
	WeedProcessing = {coords = vector3(2329.02, 2571.29, 46.68), name = _U('blip_weedprocessing'), color = 25, sprite = 496,visible = true},	

	CocaField = {coords = vector3(9.92, 6862.66, 12.78), name = _U('blip_cocafield'), color = 25, sprite = 496, radius = 15.0,visible = false},
	CocaProcessing = {coords = vector3(280.46, 6795.71, 15.69), name = _U('blip_cocaprocessing'), color = 25, sprite = 496, visible = false},	

	MethaField = {coords = vector3(1888.38, -2592.42, 33.61), name = _U('blip_methafield'), color = 25, sprite = 496, radius = 15.0,visible = false},
	MethaProcessing = {coords = vector3(1977.67, -2610.82, 3.55), name = _U('blip_methaprocessing'), color = 25, sprite = 496, visible = false},	

	OpioField = {coords = vector3(609.33, 3100.72, 40.66), name = _U('blip_opiofield'), color = 25, sprite = 496, radius = 15.0,visible = false},
	OpioProcessing = {coords = vector3(519.65, 3085.25, 41.00), name = _U('blip_opioprocessing'), color = 25, sprite = 496, visible = false},	
}
