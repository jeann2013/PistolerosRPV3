Config = {}
Config.Locale = 'es' -- The local you want to use for your server
Config.TruckPlateNumb = 0  -- This starts the custom plate for trucks at 0
Config.MaxStops	= 10 -- Total number of stops a person is allowed to do before having to return to depot.
Config.MaxBags = 10 -- Total number of bags a person can get out of a bin
Config.MinBags = 6 -- Min number of bags that a bin can contain.
Config.BagPay = 100 -- The amount paid to each person per bag
Config.StopPay = 280 -- Total pay for the stop before bagpay.
Config.JobName = 'garbage'  -- use this to set the jobname that you want to be able to do garbagecrew 

--Config.UseWorkClothing = true	-- This feature has been removed until I can find the issue with removing player loadout on reload

Config.Trucks = {
  'trash',
  'trash2',
}

Config.DumpstersAvaialbe = {
  218085040,
  666561306,
  -58485588,
  -206690185,
  1511880420,
  682791951,
  -387405094,
  364445978,
  1605769687,
  -1831107703,
  -515278816,
  -1790177567,
}

Config.VehicleSpawn = {pos = vector3(-328.50,-1520.99, 27.53),}

Config.Zones = {
	[1] = {type = 'Zone', size = 5.0 , name = 'endmission', pos = vector3(-335.26,-1529.56, 26.58)},
	[2] = {type = 'Zone', size = 3.0 , name = 'timeclock', pos = vector3(-321.70,-1545.94, 30.02)},
	[3] = {type = 'Zone', size = 3.0 , name = 'vehiclelist', pos = vector3(-316.16,-1536.08, 26.65)},
}

-- if you wish to add more pickup locations must have the same format as below.  Make sure when you are selecting locations you have
-- your Settings\Graphics\Distance Scaling - turned all the way down to make sure the bin will show up for everyone.
Config.Collections = {
  [1] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(114.83,-1462.31, 29.29508)},
  [2] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-6.04,-1566.23, 29.209197)},
  [3] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1.88,-1729.55, 29.300233)},  
  [4] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(358.94,-1805.07, 28.96659)},
  [5] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(481.36,-1274.82, 29.64475)},
  [6] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(127.9472,-1057.73, 29.19237)}, --
  [7] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1613.123, -509.06, 34.99874)},
  [8] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(342.78,-1036.47, 29.19420)},
  [9] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(383.03,-903.60, 29.15601)}, 
  [10] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(165.44,-1074.68, 28.90792)},   
  [11] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1463.92, -623.96, 30.20619)},
  [12] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(443.96,-574.33, 28.49450)},
  [13] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1255.41,-1286.82,3.58411)}, 
  [14] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1229.35, -1221.41, 6.44954)},
  [15] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-31.94,-93.43, 57.24907)},  
  [16] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-364.33,-1864.71, 20.24249)}, 
  [17] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-1239.42, -1401.13, 3.75217)},
  [18] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(1967.30, 3756.12, 32.23)},  
  [19] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(436.65, 3561.83, 33.24)},
  [20] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(2673.67, 3465.71, 55.64)},
  [21] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(1597.54, 6454.90, 25.32)},
  [22] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(123.80, 6651.73, 31.75)},  
  [23] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(-579.29, 5230.40,70.50)},  
  [24] = {type = 'Collection', size = 5.0 , name = 'collection', pos = vector3(436.36, 3561.84,33.24)},
}


