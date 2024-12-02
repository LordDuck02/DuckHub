local id = game.PlaceId
local repo = 'https://raw.githubusercontent.com/lordduck02/DuckHub/games/'..id..'/script.lua'

local function notify(h, t)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = h,
        Text = t
    })
end

local s, f = pcall(function()
    return loadstring(game:HttpGet(repo))()
end)

if not s then
    notify("Duck hub - Error", "Game not supported")
end
