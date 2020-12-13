fx_version 'adamant'

client_scripts {    
    'client.lua',
    'config.lua'    
}

server_scripts {
    'server.lua',
    'config.lua'
}
fx_version 'adamant'

game 'gta5'

client_scripts {
    'client.lua',
    'config.lua',
}

server_scripts {
    '@esx_billing/server/main.lua',
    'server.lua',
    'config.lua',
}

dependencies {
	'esx_billing'
}