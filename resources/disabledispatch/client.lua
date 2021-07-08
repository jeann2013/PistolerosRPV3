Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for i ) 1, 12 do
            EnableDispatchService(i,false)
        end
        --SetEveryoneIgnorePlayer(PlayerId(), 1)
        SetPlayerWantedLevel(PlayerId(), 0, false)
		SetPlayerWantedLevelNow(PlayerId(), false)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
    end
end)
