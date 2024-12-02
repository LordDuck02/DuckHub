local id = game.PlaceId
local repo = 'https://raw.githubusercontent.com/LordDuck02/DuckHub/main/games/'..id..'/script.lua'

local function notify(h, t)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = h,
            Text = t
        })
    end)
end

local s, f = pcall(function()
    return loadstring(game:HttpGet(repo))()
end)

if not s then
    notify("Duck Hub - Error", "Game not supported or script loading failed.")
end
