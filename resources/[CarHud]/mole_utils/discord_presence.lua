Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(597168751200174100)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('forasteros_fondo_transparente_ajustado')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('ForasterosRP')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('forasteros_fondo_transparente_ajustado')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('ForasterosRP')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)