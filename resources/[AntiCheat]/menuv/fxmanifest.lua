----------------------- [ MenuV ] -----------------------
-- GitHub: https://github.com/ThymonA/menuv/
-- License: GNU General Public License v3.0
--          https://choosealicense.com/licenses/gpl-3.0/
-- Author: Thymon Arens <contact@arens.io>
-- Name: MenuV
-- Version: 1.0.0
-- Description: FiveM menu libarary for creating menu's
----------------------- [ MenuV ] -----------------------
fx_version 'adamant'
game 'gta5'
lua54 'yes'

name 'MenuV'
version '1.3.0'
description 'FiveM menu libarary for creating menu\'s'
author 'ThymonA'
contact 'contact@arens.io'
url 'https://github.com/ThymonA/menuv/'

files {
    'menuv.lua',
    'menuv/components/*.lua',
    'dist/*.html',
    'dist/css/*.css',
    'dist/js/*.js',
    'dist/fonts/*.woff',
    'languages/*.json'
}

ui_page 'dist/menuv.html'

client_scripts {
    'config.lua',
    'menuv/components/utilities.lua',
    'menuv/menuv.lua'
}