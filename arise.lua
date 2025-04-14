
local cloneref = cloneref or function(o) return o end
COREGUI = cloneref(game:GetService("CoreGui"))
Players = cloneref(game:GetService("Players"))

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())
everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
isLegacyChat = TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService


if not game:IsLoaded() then
    local notLoaded = Instance.new("Message")
    notLoaded.Parent = COREGUI
    notLoaded.Text = "Infinite Yield is waiting for the game to load"
    game.Loaded:Wait()
    notLoaded:Destroy()
end

taks.wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/perfectusmim1/script/refs/heads/main/crossover"))()

local TeleportCheck = false
Players.LocalPlayer.OnTeleport:Connect(function(State)
	if KeepInfYield and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
        taks.wait(10)
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/jemhakdog/lua_scripts/refs/heads/main/inffyield.lua'))()")
	end
end)


