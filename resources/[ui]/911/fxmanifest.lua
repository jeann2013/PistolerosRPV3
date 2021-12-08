fx_version 'adamant'

game 'gta5'

client_scripts {
	'config.lua',
	'bb_c.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'bb_s.lua'
}