-----------------------------------------------------
--- Advanced 911, Made by FAXES modified by Lenzh ---
-----------------------------------------------------
RegisterCommand("911", function(source, args, rawCommand)
    local service = args[1]
    local desc = table.concat(args, " ", 2)
    local s = source

    if service == "pd" then
        if desc == nil then
            TriggerClientEvent("chatMessage", source, "^1Especifique una descripción de la llamada.")
        else
            callid = s
            TriggerClientEvent("Fax:SendCall", -1, service, desc, callid)
            TriggerClientEvent("chatMessage", source, "^1911 Llamada enviada para " .. service .. ".")
        end

    elseif service == "ems" then
        if desc == nil then
            TriggerClientEvent("chatMessage", source, "^1Especifique una descripción de la llamada.")
        else
            callid = s
            TriggerClientEvent("Fax:SendCall", s, service, desc, callid)
            TriggerClientEvent("chatMessage", source, "^1911 Llamada enviada para " .. service .. ".")
        end

    --elseif service == "all" then
    --    if desc == nil then
    --        TriggerClientEvent("chatMessage", source, "^1Especifique una descripción de la llamada.")
    --    else
    --        callid = s
    --        TriggerClientEvent("Fax:SendCall", s, service, desc, callid)
    --        TriggerClientEvent("chatMessage", source, "^1911 Call Sent to " .. service .. ".")
    --    end

    else
        TriggerClientEvent("chatMessage", source, "^5Por favor especifique el servicio. Ejemplo; pd(Policia) /911 pd se veria un robo, ems(Salud) /911 ems accidente")
    end
end)


RegisterServerEvent("Fax:SendCallToTeam")

AddEventHandler("Fax:SendCallToTeam", function(service, desc, callid, streetName, crossing)

	local s = source


	if service == "pd" then

			TriggerClientEvent("chatMessage", s, "^1911 Llamada [ID:" .. callid .. "]^3 [Ubicación: " .. streetName .. " ^y ^3" .. crossing .. "] ^4 Mensaje: ^5"  .. desc)

		elseif service == "ems" then

			TriggerClientEvent("chatMessage", s, "^1911 Llamada [ID:" .. callid .. "]^3 [Ubicación: " .. streetName .. " ^y ^3" .. crossing .. "] ^4 Mensaje: ^5"  .. desc)

        elseif service == "all" then

			TriggerClientEvent("chatMessage", s, "^1911 Llamada [ID:" .. callid .. "]^3 [Ubicación: " .. streetName .. " ^y ^3" .. crossing .. "] ^4 Mensaje: ^5"  .. desc)

	end

end)
