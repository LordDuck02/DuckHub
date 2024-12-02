local game = game
if not game:IsLoaded() then game.Loaded:Wait() end

local function notify(h, t)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = h,
        Text = t
    })
end

notify("Duck hub - Loading", "Loading UI'")

local ws = game:FindFirstChildOfClass("Workspace")
local plrs = game:FindFirstChildOfClass("Players")
local rs = game:GetService("RunService")
local newitem = false
local rstg = game:GetService("ReplicatedStorage")
local remotes = rstg:FindFirstChild("Remote")
local lg = game:GetService("Lighting")
local VirtualInputManager = game:GetService("VirtualInputManager")

local doorsf = ws:FindFirstChild("Door")
local transformbricksf = ws:WaitForChild("Scripted"):FindFirstChild("TransformBrick")
local kysremote = remotes:WaitForChild("DiedRemote")
local escapremote = remotes:WaitForChild("Grab"):FindFirstChild("Escape")

local lp = plrs.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local cc = ws.CurrentCamera
local esptg = false
local itemtg = false
local wait = task.wait 

local itemSpots = {"KnifeSpot", "KatanaSpot", "ScytheSpot", "TaserSpot"}
local foodSpots = {}
local plrweapons = {}

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

function gen(l)
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local randomString = ""
    
    for i = 1, l do
        local randIndex = math.random(1, #charset)
        randomString = randomString .. charset:sub(randIndex, randIndex)
    end
    
    return randomString
end

function cESP(player)
    if player == lp then return end
    local character = player.Character or player.CharacterAdded:Wait()
    local chamsContainer = character:FindFirstChild("Chams")
    if chamsContainer and not esptg then chamsContainer:Destroy() end

    if esptg then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid and not character:FindFirstChild("Chams") then
            local chamsContainer = Instance.new("Folder")
            chamsContainer.Name = "Chams"
            chamsContainer.Parent = character
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    local chamPart = Instance.new("BoxHandleAdornment")
                    chamPart.Name = gen(20)
                    chamPart.Adornee = part
                    chamPart.AlwaysOnTop = true
                    chamPart.ZIndex = 1
                    chamPart.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
                    chamPart.Color3 = player.TeamColor.Color
                    chamPart.Transparency = 0.5
                    chamPart.Parent = chamsContainer
                end
            end
        end

        local head = character:FindFirstChild("Head")
        if head then
            local espFrame = head:FindFirstChild("ESP_" .. player.UserId)
            if not espFrame then
                espFrame = Instance.new("BillboardGui")
                espFrame.Name = "ESP_" .. player.UserId
                espFrame.Parent = head
                espFrame.Adornee = head
                espFrame.Size = UDim2.new(0, 100, 0, 50)
                espFrame.StudsOffset = Vector3.new(0, 2, 0)
                espFrame.AlwaysOnTop = true

                local textLabel = Instance.new("TextLabel")
                textLabel.Parent = espFrame
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                textLabel.TextSize = 8
                textLabel.TextStrokeTransparency = 0.8
                textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Text = player.Name
                textLabel.ZIndex = 1
            end

            if humanoid then 
                local health = math.floor(humanoid.Health)
                local distance = math.floor((character.Head.Position - lp.Character.Head.Position).Magnitude)
                local espText = player.Name .. " | Health: " .. health .. " | Distance: " .. distance .. " studs"
                local textLabel = espFrame:FindFirstChildOfClass("TextLabel")
                if textLabel then textLabel.Text = espText end
            end
        end
    end
end

local function updplrs()
    for _, player in ipairs(plrs:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Head") then
            cESP(player)
        end
    end
end

local function spooflclientname()
    local name = gen(10)
    local Plr = lp
    local name = name

    local function updateText(Value)
        local has = string.find(Value.Text, Plr.Name)
        if has then
            Value.Text = Value.Text:gsub(Plr.Name, name)
        end
    end

    for _, Value in next, game:GetDescendants() do
        if Value.ClassName == "TextLabel" then
            updateText(Value)
            Value:GetPropertyChangedSignal("Text"):Connect(function()
                updateText(Value)
            end)
        end
    end

    game.DescendantAdded:Connect(function(Value)
        if Value.ClassName == "TextLabel" then
            updateText(Value)
            Value:GetPropertyChangedSignal("Text"):Connect(function()
                updateText(Value)
            end)
        end
    end)
end


local function addUI(part)
    if not itemtg then return end 

    local partGui = Instance.new("BillboardGui", part)
    partGui.Size = UDim2.new(2, 0, 2, 0)
    partGui.AlwaysOnTop = true
    partGui.Name = "Item ESP"
    
    local frame = Instance.new("Frame", partGui)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 150)
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1.3, 0, 1.3, 0)
    frame.BorderSizePixel = 0
    
    local nameGUI = Instance.new("BillboardGui", part)
    nameGUI.Size = UDim2.new(3, 0, 1.5, 0)
    nameGUI.SizeOffset = Vector2.new(0, 1)
    nameGUI.AlwaysOnTop = true
    nameGUI.Name = "Name"
    
    local text = Instance.new("TextLabel", nameGUI)
    text.Font = Enum.Font.GothamSemibold
    text.Name = "Text"
    text.Text = part.Name
    text.TextColor3 = Color3.fromRGB(255, 80, 60)
    text.Transparency = 0
    text.BackgroundTransparency = 1
    text.TextScaled = true
    text.Size = UDim2.new(1, 0, 1, 0)
end

local function monitorNewItems()
    if not itemtg then return end
    local itemSpotsFolder = ws:FindFirstChild("Scripted"):FindFirstChild("ItemSpawner")
    
    if itemSpotsFolder then
        for _, spotName in ipairs(itemSpots) do
            local spotFolder = itemSpotsFolder:FindFirstChild(spotName)
            
            if spotFolder then
                spotFolder.ChildAdded:Connect(function(newItem)
                    addUI(newItem)
                    local hg = Instance.new("Highlight", newItem)
                    hg.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    hg.FillColor = Color3.fromRGB(0, 0, 255)
                    hg.FillTransparency = 0.5
                    hg.OutlineColor = Color3.fromRGB(255, 0, 0)
                    hg.OutlineTransparency = 0.9 

                    if newitem then notify("New item spawned", newItem.Name) end
                end)
            end
        end
    end
end

local function itemESP()
    if not itemtg then return end
    for _, child in ipairs(ws.Scripted.ItemSpawner:GetChildren()) do
        if table.find(itemSpots, child.Name) then
            for _, item in ipairs(child:GetChildren()) do 
                addUI(item)
                local hg = Instance.new("Highlight", item.Parent)
                hg.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                hg.FillColor = Color3.fromRGB(0, 0, 255)
                hg.FillTransparency = 0.5
                hg.OutlineColor = Color3.fromRGB(255, 0, 0)
                hg.OutlineTransparency = 0.9 
            end
        end
    end
end

local Window = Library:CreateWindow({
    Title = 'Kaiju Paradise - Duck Hub 2.0',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.5
})

local Tabs = {
    Main = Window:AddTab("Main"),
    PvP = Window:AddTab("PvP"),
    ['UI Settings'] = Window:AddTab("UI Config")
}

local function fb()
	lg.Brightness = 2
    lg.ClockTime = 14
	lg.GlobalShadows = false
	lg.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end

local mainleftgroupbox = Tabs.Main:AddLeftGroupbox('Player stuff')
local modding = Tabs.PvP:AddRightGroupbox("Gun modding")
local visualsbox = Tabs.Main:AddRightGroupbox('Visuals')
local bypasstab = Tabs.Main:AddRightGroupbox('Common bypass')
local miscbox = Tabs.Main:AddRightGroupbox('Misc')
local lightstuff = Tabs.Main:AddLeftGroupbox("Lighting")

local hitboxbox = Tabs.PvP:AddLeftGroupbox("Hitbox expander")

visualsbox:AddToggle('espTG', {
    Text = 'Player ESP',
    Default = false,
    Tooltip = 'Enable/Disable Player ESP', 

    Callback = function(Value)
        esptg = Value  
        updplrs()
    end
})

plrs.PlayerAdded:Connect(function(player)
    if not esptg then return end
    player.CharacterAdded:Connect(function()
        cESP(player)
    end)
end)

rs.Heartbeat:Connect(function()
    if esptg then
        updplrs()
    end
end)

visualsbox:AddToggle('itemESP', {
    Text = 'Item ESP',
    Default = false,
    Tooltip = 'Enable/Disable Item ESP', 

    Callback = function(Value)
        itemtg = Value
        itemESP()
        monitorNewItems()
    end
})

visualsbox:AddToggle('itemnotify', {
    Text = 'Notify items being spawned',
    Default = false,
    Tooltip = 'Sends a notification when a new weapon spawns', 

    Callback = function(Value)
        newitem = Value
    end
})

miscbox:AddButton({
    Text = "Serverhop",
    Func = function()
        local request = game:HttpGetAsync('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder=Asc&limit=100')
        local jobs = {}
        
        for _, server in next, game:GetService('HttpService'):JSONDecode(request)['data'] do
            if (server.playing < server.maxPlayers) and (game.JobId ~= server.id) then
                table.insert(jobs, server.id)
            end
        end
        game:GetService('TeleportService'):TeleportToPlaceInstance(6456351776, jobs[1])        
    end,
    DoubleClick = false,
    Tooltip = "Change servers"
})

miscbox:AddButton({
    Text = "Rejoin",
    Func = function()       
        game:GetService("TeleportService"):Teleport(game.PlaceId, player)
    end,
    DoubleClick = false,
    Tooltip = "Rejoin"
})

local function changePlayerName(name, color)
    local args = { [1] = name, [2] = color }
    rstg.Remote.ChangePlayerName:FireServer(unpack(args))
end

miscbox:AddButton({
    Text = "Spoof client name",
    Func = function()
        spooflclientname()    
    end,
    DoubleClick = false,
    Tooltip = "Client sided only!"
})

miscbox:AddButton({
    Text = "Spoof Name",
    Func = function()
        changePlayerName(gen(10), Color3) 
    end,
    DoubleClick = false,
    Tooltip = "You need the feature unlocked!"
})

-- walkspeed changer
-- crazy bypassing

local function crazyws(ws)
    getgenv().walkspeed = ws

    local oldnewindex
    oldnewindex = hookmetamethod(game, "__newindex", function(a, b, c)
        if tostring(a) == "Humanoid" and tostring(b) == "WalkSpeed" then    
            return oldnewindex(a, b, getgenv().walkspeed)
        end
        return oldnewindex(a, b, c)
    end)
end

mainleftgroupbox:AddSlider('wsChanger', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        crazyws(Value)
    end
})

mainleftgroupbox:AddSlider('FOVslider', {
    Text = 'Field of View',
    Default = 90,
    Min = 1,
    Max = 200,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        if cc and cc.FieldOfView then cc.FieldOfView = Value else notify("Error", "Current camera no found - report it now") end 
    end
})

local flightg = false
local uis = game:GetService("UserInputService")
local flying = false
local flySpeed = 100 
local maxFlySpeed = 1000 
local speedIncrement = 0.4 
local originalGravity = workspace.Gravity
local connection

local function randomizeValue(value, range)
    return value + (value * (math.random(-range, range) / 100))
end

local hrp = char:WaitForChild("HumanoidRootPart")

local function flight()
    while flightg do
        local MoveDirection = Vector3.new()
        local cameraCFrame = workspace.CurrentCamera.CFrame

        MoveDirection = MoveDirection + (uis:IsKeyDown(Enum.KeyCode.W) and cameraCFrame.LookVector or Vector3.new())
        MoveDirection = MoveDirection - (uis:IsKeyDown(Enum.KeyCode.S) and cameraCFrame.LookVector or Vector3.new())
        MoveDirection = MoveDirection - (uis:IsKeyDown(Enum.KeyCode.A) and cameraCFrame.RightVector or Vector3.new())
        MoveDirection = MoveDirection + (uis:IsKeyDown(Enum.KeyCode.D) and cameraCFrame.RightVector or Vector3.new())
        MoveDirection = MoveDirection + (uis:IsKeyDown(Enum.KeyCode.Space) and Vector3.new(0, 1, 0) or Vector3.new())
        MoveDirection = MoveDirection - (uis:IsKeyDown(Enum.KeyCode.LeftShift) and Vector3.new(0, 1, 0) or Vector3.new())

        if MoveDirection.Magnitude > 0 then
            flySpeed = math.min(flySpeed + speedIncrement, maxFlySpeed) 
            MoveDirection = MoveDirection.Unit * math.min(randomizeValue(flySpeed, 10), maxFlySpeed)
            hrp.Velocity = MoveDirection * 0.5
        else
            hrp.Velocity = Vector3.new(0, 0, 0) 
        end

        rs.RenderStepped:Wait() 
    end
end

mainleftgroupbox:AddToggle('flighttg', {
    Text = 'Flight',
    Default = false, 
    Tooltip = 'VERY Basic flying', 

    Callback = function(Value)
        flightg = Value
        if Value then 
            flight()
        end
    end
})

local infjump = false

mainleftgroupbox:AddToggle('infjumop', {
    Text = 'Inf jump',
    Default = false, 
    Tooltip = 'Infinite jump', 

    Callback = function(Value)
        infjump = Value
    end
})

uis.JumpRequest:connect(function()
	if infjump then
		hum:ChangeState("Jumping")
	end
end)

mainleftgroupbox:AddLabel("Non-Humanoid stuff")

local kys = false
local kyss = false
local furries = game:GetService("Teams").Gootraxian

furries.PlayerAdded:Connect(function(player)
    if player == lp then
        if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
            if kyss then
                local old = lp.Character.HumanoidRootPart.CFrame
                kysremote:FireServer()
                lp.CharacterAdded:Wait()
                repeat
                    wait() 
                until lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
                lp.Character.HumanoidRootPart.CFrame = old
            end
            if kys then
                kysremote:FireServer()
            end
        end
    end
end)

mainleftgroupbox:AddToggle('kym', {
    Text = 'Respawn when infected by goox',
    Default = false, 
    Tooltip = 'This automatically respawns you back to spawn when infected (u can change)', 

    Callback = function(Value)
        kys = Value 
    end
})

mainleftgroupbox:AddToggle('kyms', {
    Text = '^ Respawn back to old position',
    Default = false, 
    Tooltip = 'When you respawn, you go back to your old position', 

    Callback = function(Value)
        kyss = Value 
    end
})

local autoescape = false


lp.Character.ChildAdded:Connect(function(c)
    if not autoescape then return end
    if c:IsA("Weld") and c.Name == "GrabWeld" then 
        for i=1, 10 do 
            escapremote:FireServer()
            wait(.1)
        end
    end
end)


mainleftgroupbox:AddToggle('autoescape', {
    Text = 'Auto escape',
    Default = false, 
    Tooltip = 'Spams the escape thingy for you ! :3', 

    Callback = function(Value)
        autoescape = Value
    end
})

lightstuff:AddButton({
    Text = "Full Bright",
    Func = function()
        fb()
    end,
    DoubleClick = false,
    Tooltip = "Supernova"
})

local nodoors = false
local nopuddle = false

local hiddenFolder = Instance.new("Folder")
hiddenFolder.Name = "HiddenDoors"
hiddenFolder.Parent = game:GetService("ServerStorage")

local hiddenFolder2 = Instance.new("Folder")
hiddenFolder2.Name = "HiddenPuddle"
hiddenFolder2.Parent = game:GetService("ServerStorage")

local doorParents = {}
local puddleParents = {}

local function thedoorsthing()
    for _, v in ipairs(doorsf:GetChildren()) do
        if v:IsA("Model") then
            if nodoors then
                if not doorParents[v] then
                    doorParents[v] = v.Parent
                end
                v.Parent = hiddenFolder
            else
                v.Parent = doorParents[v] or doorsf
                doorParents[v] = nil
            end
        end
    end
end

local function puddlething()
    for _, v in ipairs(transformbricksf:GetChildren()) do
        if v:IsA("Model") then
            if nopuddle then
                if not puddleParents[v] then
                    puddleParents[v] = v.Parent
                end
                v.Parent = hiddenFolder2
            else
                v.Parent = puddleParents[v] or transformbricksf
                puddleParents[v] = nil
            end
        end
    end
end

bypasstab:AddToggle('nodoors', {
    Text = 'No doors',
    Default = false, 
    Tooltip = 'Enable/Disable Doors', 

    Callback = function(Value)
        nodoors = Value
        thedoorsthing()
    end
})


bypasstab:AddToggle('notransbricks', {
    Text = 'No transform bricks',
    Default = false, 
    Tooltip = 'Hides/Shows transform bricks fr', 

    Callback = function(Value)
        nopuddle = Value
        puddlething()
    end
})

-- pvp tab

local selectedweapon = nil

local properstg = 
{
    ["Bat"] = {
        ["Cooldown"] = 2.59,
        ["MaxHit"] = 2,
    },
    ["Pipe"] = {
        ["Cooldown"] = 2.99,
        ["MaxHit"] = 3,
    },
    ["Katana"] = {
        ["Cooldown"] = 0.45,
        ["MaxHit"] = 3,
    },
    ["Sledge Hammer"] = {
        ["Cooldown"] = 3.8,
        ["MaxHit"] = 3,
    },
    ["Crowbar"] = {
        ["Cooldown"] = 3.7,
        ["MaxHit"] = 4,
    },
    ["Golden Bat"] = {
        ["Cooldown"] = 2.99,
        ["MaxHit"] = 4,
    },
    ["Golden Sledge Hammer"] = {
        ["Cooldown"] = 3.79,
        ["MaxHit"] = 4,
    },
    ["Scythe"] = {
        ["Cooldown"] = 3.82,
        ["MaxHit"] = 5,
    },
    ["Grab"] = {
        ["Cooldown"] = 2.62,
        ["MaxHit"] = 3,
    },
    ["Attack"] = {
        ["Cooldown"] = 2.22,
        ["MaxHit"] = 2,
        ["PrepareTime"] = .1
    },
    ["Flying Attack"] = {
        ["Cooldown"] = 2.8,
        ["MaxHit"] = 1,
        ["PrepareTime"] = .2
    },
}

local function fastcd(weapon)
    local wfolder = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(weapon)
    
    if wfolder then
        local gunstatesmodule = wfolder:FindFirstChild("Setting")
        
        if gunstatesmodule and gunstatesmodule:IsA("ModuleScript") then
            local m = require(gunstatesmodule)

            m.Cooldown = properstg[weapon].Cooldown
            m.MaxHit = properstg[weapon].MaxHit
            if m.PrepareTime then m.PrepareTime = properstg[weapon].PrepareTime end
            print("Cooldown updated for weapon: " .. weapon)
        else
            warn("No 'Setting' module found in weapon: " .. weapon)
        end
    else
        warn("Weapon not found in backpack: " .. weapon)
    end
end

local function infdurability(weapon)
    local wfolder = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(weapon)
    
    if wfolder then
        local gunstatesmodule = wfolder:FindFirstChild("Setting")
        
        if gunstatesmodule and gunstatesmodule:IsA("ModuleScript") then
            local m = require(gunstatesmodule)
            m.ShowDurability = math.huge
            m.MaxHit = properstg[weapon].MaxHit
        end
    end
end


local function tableContains(x, y)
    for _, val in next, x do 
        if val == y then return true end
    end
    return false
end

modding:AddDropdown('gunSelect', {
    Values = plrweapons,
    Default = 1, 
    Multi = false, 

    Text = 'Weapon selection',
    Tooltip = 'Select a weapon from your inventory to modify!', 

    Callback = function(Value)
        selectedweapon = Value
    end
})

local function inittable()
    for _, weaponfolder in ipairs(lp.Backpack:GetChildren()) do 
        if tableContains(plrweapons, weaponfolder.Name) then continue end 
        if weaponfolder then table.insert(plrweapons, weaponfolder.Name) end

        Options.gunSelect:SetValue(plrweapons)
    end
end

lp.Backpack.ChildAdded:Connect(function(child)
    inittable()
end)

inittable()

modding:AddButton({
    Text = "Faster cooldown",
    Func = function()
        fastcd(selectedweapon)
    end,
    DoubleClick = false,
    Tooltip = "Faster cooldowns depending on which weapon it is. (Dodging AC)"
})

modding:AddButton({
    Text = "Infinite Durability",
    Func = function()
        infdurability(selectedweapon)
    end,
    DoubleClick = false,
    Tooltip = "Inf durability '-' "
})

_G.transparency = 0.8

hitboxbox:AddToggle('Expand', {
    Text = 'Expanded hitbox',
    Default = false,
    Tooltip = 'Hitbox expand', 

    Callback = function(Value)
        if Value then
            for i, v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        v.Character.HumanoidRootPart.Transparency = _G.transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Royal purple")
                        v.Character.HumanoidRootPart.Material = "Neon"
                        v.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        else
            for i, v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 2)
                        v.Character.HumanoidRootPart.Transparency = _G.transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Royal purple")
                        v.Character.HumanoidRootPart.Material = "Neon"
                        v.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        end
    end
})

hitboxbox:AddSlider('hitboxsize', {
    Text = 'Hitbox size',
    Default = 20,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        _G.HeadSize = Value  
        
        for i, v in next, game:GetService('Players'):GetPlayers() do
            if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                end)
            end
        end
    end
})


hitboxbox:AddSlider('hitboxsize', {
    Text = 'Hitbox transparency',
    Default = 0.8,
    Min = 0.1,
    Max = 1,
    Rounding = 0.1,
    Compact = true,

    Callback = function(Value)
        _G.transparency = Value
    end
})

-- UI Settings
-- copied straight from the repo because i FUCKING HATE writing everthing over

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind 

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('Duckhub')
SaveManager:SetFolder('Duckhub/KaijuParadise')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()