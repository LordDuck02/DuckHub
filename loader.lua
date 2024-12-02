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

local function loadScript(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)

    if not success then
        notify("Duck Hub - Error", "Script loading failed: " .. tostring(result))
    end
    return success
end

local gameSupported = loadScript(repo)

if not gameSupported then
    notify("Duck Hub - Error", "Game not supported or script loading failed.")
end
