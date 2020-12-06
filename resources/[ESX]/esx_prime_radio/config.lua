Config = {}

Config.RestrictedChannels = 10 -- channels that are encrypted (EMS, Fire and police can be included there) if we give eg 10, channels from 1 - 10 will be encrypted

Config.MaxFrequency = 500

Config.messages = {
  ['not_on_radio'] = 'NO estas conectado a un señal',
  ['on_radio'] = 'Estas conectado a una señal: <b>',
  ['joined_to_radio'] = 'Estas conectado On: <b>',
  ['restricted_channel_error'] = '¡No puede conectarse a esta señal!',
  ['you_on_radio'] = 'Ya estás conectado a esta señal: <b>',
  ['you_leave'] = 'Dejaste la señal: <b>'
}