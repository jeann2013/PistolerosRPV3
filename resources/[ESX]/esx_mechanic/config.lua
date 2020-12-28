-------------------
-- C o n f i g s --
-------------------


companyName = "DVRepairs"       
companyIcon = "CHAR_LS_CUSTOMS" -- https://wiki.gtanet.work/index.php?title=Notification_Pictures
spawnRadius = 100               -- Default Value: 
drivingStyle = 786603           -- Default Value: 786603
simplerRepair = true           -- When enabled, instead of getting out of the vehicle to repair, the mechanic stops his vehicle and the repair happens automatically.
repairComsticDamage = false     -- When enabled, the vehicle's cosmetic damage gets reset.
flipVehicle = false             -- When enabled, the vehicle will be flipped if on roof or side after repair.
 
-- To change the chat command (def. /mechanic), see line 1 of client.lua

-- Edit / Add Drivers and their information here!

mechPeds = {
                --  * Find the icons here:      https://wiki.gtanet.work/index.php?title=Notification_Pictures
                --  * Find the ped models here: https://wiki.gtanet.work/index.php?title=Peds
                --  * Find the vehicles here    https://wiki.gtanet.work/index.php?title=Vehicle_Models
                --  * Find the colours here:    https://wiki.gtanet.work/index.php?title=Vehicle_Colors

                [1] = {name = "Mechanic Dave", icon = "CHAR_MP_MECHANIC", model = "S_M_Y_DockWork_01", vehicle = 'UtilliTruck3', colour = 111, 
                                ['lines'] = {
                                        "Ella está como nueva.",
                                        "Listo todo",
                                        "Aquí tienes, deberías estar trabajando ahora.",
                                        "Listisimo",
                                        "Qué puedo decir, soy una maestra de mi oficio.",
                                        "Tuve que rociar un poco de magia, pero debería funcionar ahora.",
                                        "¿A quien vas a llamar? Dave Mechanic!",
                                        "Tranquilo ya casi esta",
                                        "Es más fácil pisar el acelerador la próxima vez, ¿quieres?",
                                        "Lo único que no puedo arreglar es mi matrimonio...",
                                        "Fijado todo. ¡Que tenga un buen día, conduzca con cuidado!",
                                        "Es un poco complicado, pero funciona.",}},

                [2] = {name = "Mechanic Miles", icon = "CHAR_MP_BIKER_MECHANIC", model = "S_M_Y_Construct_01", vehicle = 'BobcatXL', colour = 118, 
                                ['lines'] = {
                                        "¡Yeehaw, ahora está más fresca que una almohada con menta!",
                                        "Listo todo",
                                        "TRabajo realizado.",
                                        "Hice todo lo que pude.",
                                        "¡Lo golpeé con una llave un par de veces y creo que funcionó!",
                                        "Nuestra empresa no asume ninguna responsabilidad por las combustiones espontáneas del motor.",
                                        "Sometimes I don't really think I know what I'm doing. Anyway, here's your car!",
                                        "Ahh, sí ... La tubería de agua necesitaba ser reemplazada. Todo bien ahora.",
                                        "Ella esta en perfectas condiciones.",
                                        "*golpea el techo del auto* Este chico malo puede meter tantos tornillos.",
                                        "Deberia de funcionar ahora"}},

                -- You can use this template to make your own driver.

                --  * Find the icons here:      https://wiki.gtanet.work/index.php?title=Notification_Pictures
                --  * Find the ped models here: https://wiki.gtanet.work/index.php?title=Peds
                --  * Find the colours here:    https://wiki.gtanet.work/index.php?title=Vehicle_Colors
                --  * Driver ID needs to be a number (in sequential order from the previous one. In this example it would be 3).
                --[[
                
                --Edit the NAME, ICON, PED MODEL and TRUCK COLOUR here:
                [driver_ID] = {name = "driver_name", icon = "driver_icon", model = "ped_model", vehicle = 'vehicle_model' colour = 'driver_colour',

                                --You can add or edit any existing vehicle fix lines here:
                                [1] = {"Sample text 1","Sample text 2",}}, -- lines of dialogue.

                  
                ]]
                }
