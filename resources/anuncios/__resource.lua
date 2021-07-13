fx_version 'bodacious'
game 'gta5'

name 'Sistema de anuncios como los de ForasterosRP'
author 'Sapo'
version 'v1'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
	'html/imagenes/lspd.png',
	'html/imagenes/granja.png',
	'html/imagenes/guiseppes.png',
	'html/imagenes/larry.png',
	'html/imagenes/molecorp.png',
	'html/imagenes/tequilala.png',
	'html/imagenes/safd.png',
	'html/imagenes/lsc.png',
	'html/imagenes/tendero.png',
	'html/imagenes/taxi.png'
}

client_scripts {
	'client/client.lua',
	'client/depracated.lua',
	'config.lua'
}

server_scripts {
	'server/server.lua',
	'PersistentAlert',
	'@mysql-async/lib/MySQL.lua',
	'config.lua'
}

exports {
	'SendAlert',
}

dependencies {
	'es_extended',
}
