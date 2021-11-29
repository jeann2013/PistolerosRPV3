fx_version 'bodacious'
games {'gta5'}


files {
	    'vehicles.meta',
		'carcols.meta',
	    'carvariations.meta',
	    'handling.meta',
		'dlcsum20_game.dat151',
		'dlcsum20_game.dat151.rel',
		'dlcsum20_game.dat151.nametable',
		'dlcsum20_amp.dat10',
		'dlcsum20_amp.dat10.rel',
		'dlcsum20_amp.dat10.nametable',
		'dlcsum20_sounds.dat54',
		'dlcsum20_sounds.dat54.rel',
		'dlcsum20_sounds.dat54.nametable',
		'sfx/**/*.awc',
}

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'AUDIO_GAMEDATA' 'dlcsum20_game.dat'
data_file 'AUDIO_SOUNDDATA' 'dlcsum20_sounds.dat'
data_file 'AUDIO_SYNTHDATA' 'dlcsum20_amp.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_sum20'

client_script {
    'vehicle_names.lua'
}