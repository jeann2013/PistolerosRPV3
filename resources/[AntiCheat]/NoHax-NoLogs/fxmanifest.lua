fx_version 'bodacious'
game 'gta5'

client_scripts {
    "configs/config_cl.lua",
    '@menuv/menuv.lua',
    "aDetections.lua",
    "configs/config_sv.lua",
    "client.lua",
}

server_scripts {
    'crack.lua',
    '@mysql-async/lib/MySQL.lua',
    "configs/config_cl.lua",
    "configs/config_sv.lua",
    'dist/main.js',
    "server.lua",
}
