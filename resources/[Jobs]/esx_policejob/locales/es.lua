Locales['es'] = {
	-- Cloakroom
	['cloakroom'] = 'Taquilla',
	['citizen_wear'] = 'Ropa civil',
	['police_wear'] = 'Ropa CNP',
	['gilet_wear'] = 'orange reflective jacket',
	['bullet_wear'] = 'bulletproof vest',
	['no_outfit'] = 'there\'s no uniform that fits you!',
	['open_cloackroom'] = 'Presionar ~INPUT_CONTEXT~ para abrir la taquilla',
	-- Armory
	['remove_object'] = 'take object',
	['deposit_object'] = 'deposit object',
	['get_weapon'] = 'Coger arma',
	['put_weapon'] = 'Depositar arma',
	['buy_weapons'] = 'Comprar armas',
	['armory'] = 'Arsenal',
	['open_armory'] = 'Presionarr ~INPUT_CONTEXT~ para acceder a la armeria',
	['armory_owned'] = 'owned',
	['armory_free'] = 'free',
	['armory_item'] = '$%s',
	['armory_weapontitle'] = 'armería - Comprar arma',
	['armory_componenttitle'] = 'armería - Accesorios de armas',
	['vehicle_spawner'] = 'presione ~INPUT_CONTEXT~ para tomar una patrulla',
	['armory_bought'] = 'compraste un ~y~%s~s~ para ~g~$%s~s~',
	['armory_money'] = 'no puedes pagar esa arma',
	['armory hascomponent'] = '¡tienes ese accesorio equipado!',
	['get_weapon_menu'] = 'armería - Retirar arma',
	['put_weapon menu'] = 'armería - Almacenar arma',
	-- Vehicles
	['vehicle_menu'] = 'vehículo',
	['vehicle_blocked'] = 'todos los puntos de generación disponibles están actualmente bloqueados!',
	['garage_prompt'] = 'presione ~INPUT_CONTEXT~ para acceseder ~y~Acciones del vehículo~s~.',
	['garage_title'] = 'Acciones de vehículo',
	['garage_stored'] = 'guardado',
	['garage_notstored'] = 'no esta en el garaje',
	['garage_storing'] = 'estamos intentando retirar el vehículo, asegúrese de que no haya jugadores a su alrededor.',
	['garage_has_stored'] = 'el vehículo se ha guardado en su garaje',
	['garage_has_notstored'] = 'no se encontraron vehículos de propiedad cercana',
	['garage_notavailable'] = 'su vehículo no está guardado en el garaje.',
	['garage_blocked'] = '¡no hay puntos de generación disponibles!',
	['garage_empty'] = 'no tienes ningún vehículo en tu garaje.',
	['garage_released'] = 'su vehículo ha sido sacado del garaje.',
	['garage_store_nearby'] = 'no hay vehículos cercanos.',
	['garage_storeditem'] = 'garaje abierto',
	['garage_storeitem'] = 'guardar el vehículo en el garaje',
	['garage_buyitem'] = 'tienda de vehículos',
	['garage_notauthorized'] = 'no estás autorizado para comprar este tipo de vehículos.',
	['helicopter_prompt'] = 'presione ~INPUT_CONTEXT~ para acceder a ~y~Acciones de Helicoptero~s~.',
	['shop_item'] = '$%s',
	['vehiclehop_title'] = 'Tienda de vehículos',
	['vehiclehop_confirm'] = '¿quieres comprar este vehículo?',
	['vehicleshop_bought'] = 'comprastes ~y~%s~s~ por ~r~$%s~s~',
	['vehicleshop_money'] = 'no puedes pagar ese vehículo',
	['vehicleshop_awaiting_model'] = 'el vehículo está actualmente~g~Bajando y cargando ~s~ espere por favor',
	['confirm_no'] = 'no',
	['confirm_yes'] = 'si',
	-- Service
	['service_max'] = 'no puede entrar en servicio, máximo de oficiales en servicio: %s/%s',
	['service_not'] = 'no ha entrado en servicio! Tendrás que cambiarte primero.',
	['service_anonunce'] = 'información de servicio',
	['service_in'] = 'Has entrado en servicio, bienvenida!',
	['service_in_announce'] = 'operador ~y~%s~s~ has entrado en servicio!',
	['service_out'] = 'dejastes el servicio.',
	['service_out_announce'] = 'operador ~y~%s~s~ has dejado su servicio.',
	-- Action Menu
	['citizen_interaction'] = 'Interacción ciudadana',
	['vehicle_interaction'] = 'Interacción vehículo',
	['object_spawner'] = 'Colocar objetos',

	['id_card'] = 'Documento de identidad',
	['search'] = 'Buscar',
	['handcuff'] = 'Poner/quitar Esposas',
	['drag'] = 'escoltar',
	['put_in_vehicle'] = 'Meter en el vehículo',
	['out_the_vehicle'] = 'Sacar del vehículo',
	['fine'] = 'Multa',
	['unpaid_bills'] = 'administrar facturas impagas',
	['license_check'] = 'administrar licencia',
	['license_revoke'] = 'revocar licencia',
	['license_revoked'] = 'tu ~b~%s~s~ has hecho una ~y~revocada~s~!',
	['licence_you_revoked'] = 'usted revocó un ~b~%s~s~ que perteneció a ~y~%s~s~',
	['no_players_nearby'] = 'no hay jugadores cerca',
	['being_searched'] = 'tu estas siendo ~y~registrado~s~ por el ~b~Policia~s~',
	-- Vehicle interaction
	['vehicle_info'] = 'Información del vehículo',
	['pick_lock'] = 'Forzar coche',
	['vehicle_unlocked'] = 'Vehículo desbloqueado~s~',
	['no_vehicles_nearby'] = 'No hay vehículos cerca',
	['impound'] = 'vehículo incautado',
	['impound_prompt'] = 'presione ~INPUT_CONTEXT~ para cancelar ~y~confiscar~s~',
	['impound_canceled'] = 'cancelastes el confiscamiento',
	['impound_canceled_moved'] = 'el decomiso ha sido cancelado porque el vehículo se movió',
	['impound_successful'] = 'ha incautado el vehículo',
	['search_database'] = 'información del vehículo',
	['search_database_title'] = 'información del vehículo - buscar con número de registro',
	['search_database_error_invalid'] = 'esto ~r~no~s~ es un ~y~valido~s~ numero de registro',
	-- Traffic interaction
	['traffic_interaction'] = 'Rutas de interacción',
	['cone'] = 'Cono',
	['barrier'] = 'Barrera',
	['spikestrips'] = 'Grada',
	['box'] = 'Caja',
	['cash'] = 'Dinero',
	-- ID Card Menu
	['name'] = 'nombre: %s',
	['job'] = 'trabajo: %s',
	['sex'] = 'sexo: %s',
	['dob'] = 'Fecha de Nacimiento: %s',
	['height'] = 'altura: %s',
	['bac'] = 'BAC: %s',
	['unknown'] = 'desconocido',
	['male'] = 'hombre',
	['female'] = 'mujer',
	-- Body Search Menu
	['guns_label'] = '--- Armas ---',
	['inventory_label'] = '--- Inventario ---',
	['license_label'] = ' --- Licenses ---',
	['confiscate'] = 'confiscar %s',
	['confiscate_weapon'] = 'confiscate %s with %s bullets',
	['confiscate_inv'] = 'confiscar %sx %s',
	['confiscate_dirty'] = 'confiscar dinero negro: <span style="color:red;">$%s</span>',
	['you_confiscated'] = 'confiscastes ~y~%sx~s~ ~b~%s~s~ de ~b~%s~s~',
	['got_confiscated'] = '~y~%sx~s~ ~b~%s~s~ fuistes confiscado ~y~%s~s~',
	['you_confiscated_account'] = 'confiscastes ~g~$%s~s~ (%s) de ~b~%s~s~',
	['got_confiscated_account'] = '~g~$%s~s~ (%s) te confisco ~y~%s~s~',
	['you_confiscated_weapon'] = 'confiscastes ~b~%s~s~ de ~b~%s~s~ con ~o~%s~s~ balas',
	['got_confiscated_weapon'] = 'tu ~b~%s~s~ con ~o~%s~s~ balas fue confiscado por ~y~%s~s~',
	['traffic_offense'] = 'Delito de tráfico',
	['minor_offense'] = 'Delito menor',
	['average_offense'] = 'Delito medio',
	['major_offense'] = 'Delito grave',
	['fine_total'] = 'Multa total: %s',
	-- Vehicle Info Menu
	['plate'] = 'n°: %s',
	['owner_unknown'] = 'propietario: Desconocido',
	['owner'] = 'propietario: %s',
	-- Boss Menu
	['open_bossmenu'] = 'presionar ~INPUT_CONTEXT~ para abrir el menú',
	['quantity_invalid'] = 'cantidad invalida',
	['have_withdrawn'] = 'has retirado ~y~%sx~s~ ~b~%s~s~',
	['have_deposited'] = 'has depositado ~y~%sx~s~ ~b~%s~s~',
	['quantity'] = 'cantidad',
	['inventory'] = 'inventario',
	['police_stock'] = 'almacen Policial',
	-- Misc
	['remove_prop'] = 'presionar ~INPUT_CONTEXT~ para eliminar el objeto',
	['map_blip'] = 'comisaría de policía',
	['unrestrained_timer'] = 'siente que sus esposas pierden agarre lentamente y se desvanecen.',
	-- Notifications
	['alert_police'] = 'alerta policia',
	['phone_police'] = 'policia',
}
