Config = {}

Config.RestrictedChannels = 10 -- channels that are encrypted (EMS, Fire and police can be included there) if we give eg 10, channels from 1 - 10 will be encrypted
Config.enableCmd = true --  /radio command should be active or not (if not you have to carry the item "radio") true / false

Config.messages = {

  ['not_on_radio'] = 'No tienes radio',
  ['on_radio'] = 'Estas en la radio: <b>',
  ['joined_to_radio'] = 'Estas elzado a la radio: <b>',
  ['restricted_channel_error'] = 'No te puedes unir a canales cifrados!',
  ['you_on_radio'] = 'Ya estas en la radio: <b>',
  ['you_leave'] = 'Salistes de la radio: <b>'

}
