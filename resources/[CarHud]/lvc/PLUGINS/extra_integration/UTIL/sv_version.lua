--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additional Modification by TrevorBarns
---------------------------------------------------
FILE: sv_version.lua
PURPOSE: Handle plugin version checking.
---------------------------------------------------
]]

local plugin_name = "extra_integration"
local plugin_version = "1.0.2"

RegisterServerEvent("lvc:plugins_getVersions") 
AddEventHandler("lvc:plugins_getVersions", function()
	TriggerEvent("lvc:plugins_storePluginVersion", plugin_name, plugin_version)
end)