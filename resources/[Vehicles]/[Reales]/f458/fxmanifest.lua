fx_version 'bodacious'
game 'gta5'

description 'Ferrari 458 Italia by Anonym Community'
author 'Valky'
Version '1.0'

files {
    'data/vehicles.meta',
    'data/carvariations.meta',
    'data/carcols.meta',
    'data/dlctext.meta',
    'data/handling.meta',
}

data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_DLCTEXT_FILE' 'data/dlctext.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'

client_script "vehiclenames.lua"