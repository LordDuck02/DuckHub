local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function BZZgGlvNKwbATAeIJjiuVelFytNDF(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


--[[
    Kaiju paradise
        Duck hub
            2.0


    the worldBZZgGlvNKwbATAeIJjiuVelFytNDF('TtQngZdiyCVxZXVPJvprwzaQIhkMzrbdSSKMTkNwrSfhaKUjTenMnCYcyBiZXN0IGFudGljaGVhdCBieXBhc3NlciAoZmFrZSkg8J+RvQ0KDQotLV1dDQoNCmxvY2FsIGdhbWUgPSBnYW1lDQppZiBub3QgZ2FtZTpJc0xvYWRlZCgpIHRoZW4gZ2FtZS5Mb2FkZWQ6V2FpdCgpIGVuZA0KDQpsb2NhbCBmdW5jdGlvbiBub3RpZnkoaCwgdCkNCiAgICBnYW1lOkdldFNlcnZpY2Uo')StarterGuiBZZgGlvNKwbATAeIJjiuVelFytNDF('PUAInYRdEuIshvQcwwKBNqJxBExgMKfBJTBLVyuWZLcaSXAvMdjwjafKTpTZXRDb3JlKA==')SendNotificationBZZgGlvNKwbATAeIJjiuVelFytNDF('tpURGQWzPZblVEDvUUkPoKigzUwNczNTZqXCxibugZzeXxmnERAUbMPLHsNCiAgICAgICAgVGl0bGUgPSBoLA0KICAgICAgICBUZXh0ID0gdA0KICAgIH0pDQplbmQNCg0Kbm90aWZ5KA==')Duck hub - LoadingBZZgGlvNKwbATAeIJjiuVelFytNDF('oYdKiuZjzRKaVCQrVqsfInVzuavrakrVGnAtYokSkxEzSmIEmbqVgErLCA=')Loading UIBZZgGlvNKwbATAeIJjiuVelFytNDF('fJayUOVYBZNsbyCBDqttIwCnwyYEzWxeCJCiiJPZtWQDWPeblTvvyMj'))

local ws = game:FindFirstChildOfClass(BZZgGlvNKwbATAeIJjiuVelFytNDF('zYxTcOxcUgsZWdNiRdnvlKWLtOGrdpsMHbLMXTbkyXtOWGRXfoHcgELV29ya3NwYWNl'))
local plrs = game:FindFirstChildOfClass(BZZgGlvNKwbATAeIJjiuVelFytNDF('ztHzNaQecGCwhweUapruiYvyZohjksmsNiiKYUjHBAplKDrkyhSFhikUGxheWVycw=='))
local rs = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('neOWielfhMHdLShPGVWseZXuSVHoCcjOTmRKAcPMryMCKfFOPCULwEhUnVuU2VydmljZQ=='))
local newitem = false
local rstg = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('jdnZieKZqEJnHYnoZVwkfOQMMqjBCbrEbvHpOSdNNOECCDspOGxSuCiUmVwbGljYXRlZFN0b3JhZ2U='))
local remotes = rstg:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('YTaXAyilPawfZJwlpdMBUfpehnGFntbOzfbzDORLppsjXyVOoNSGOtkUmVtb3Rl'))
local lg = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('QIuvOAmuxYwELwMSjFBZWDSSsyxeholQABoaVQtAVSNUwkXADOCfdraTGlnaHRpbmc='))
local VirtualInputManager = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('wSPgUpeAuXGYnPcqfvNEbBvqhqEEYGrAKxUdldeftyISAzGXGdWViqKVmlydHVhbElucHV0TWFuYWdlcg=='))

local doorsf = ws:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('zwfFcKublmTVUsZNzpUawAGnUhDYgBlGwOKWEMJFCMyzpkjslLRrpFNRG9vcg=='))
local transformbricksf = ws:WaitForChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('RBwtgMyIzoNEbSqgdvpoIRmPEmGOnxNXtVToglnvLemOGZBelOoRgeYU2NyaXB0ZWQ=')):FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('IbFFJTvgrWFCEkaTpEzoIyoIkuwcxvsUZJhnQcUKoXCTLScucjvWAbjVHJhbnNmb3JtQnJpY2s='))
local kysremote = remotes:WaitForChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('HacnLTKcRgIvdHydEweSNjmITguCCCYQkshIKBHHFRYXxzSaszyjnGQRGllZFJlbW90ZQ=='))
local escapremote = remotes:WaitForChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('BkKMlKdnQIbNfxKLTZQJyIFNiuflsEdLdwuDpPhgmPCtwnotcmCNkgwR3JhYg==')):FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('ACjvHKaUwfziEGamIIztJtzEOlawPhzwgVoEaIxaTyvvFdkFBKsvCNuRXNjYXBl'))

local lp = plrs.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local hum = char:WaitForChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('oMIisBzIOEUlthdkrvMpsENnGhQBNrcAwLuSoIFWmaXxpbzaHiwJolfSHVtYW5vaWQ='))
local cc = ws.CurrentCamera
local esptg = false
local itemtg = false
local wait = task.wait 

local itemSpots = {BZZgGlvNKwbATAeIJjiuVelFytNDF('cstqYFvumRozeQvUipSkBujcyQVhEzRGNtvmKQofsjiiVypGCSJENvYS25pZmVTcG90'), BZZgGlvNKwbATAeIJjiuVelFytNDF('qjpCwSsDzWilJlSMXmuuNMRskfGLZtOVmOkCqOTOKMolZcMNROaVgjES2F0YW5hU3BvdA=='), BZZgGlvNKwbATAeIJjiuVelFytNDF('pOEZYhRoOCRKEbphzfwBTjUZzFXZdVLztOiulcViQIBQcSQLSXDLIzgU2N5dGhlU3BvdA=='), BZZgGlvNKwbATAeIJjiuVelFytNDF('bedZBwHbqQvIsfZylnIXaRxaLpQYxrhUyKoxnfGzHlZNFtDRteQeqdZVGFzZXJTcG90')}
local foodSpots = {}
local plrweapons = {}

local repo = BZZgGlvNKwbATAeIJjiuVelFytNDF('vMQWoagPyQBkZyqtxJMplTjpmGnPltfQOCJgxtprqlANGwWnUbfliFVaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3Zpb2xpbi1zdXp1dHN1a2kvTGlub3JpYUxpYi9tYWluLw==')

local Library = loadstring(game:HttpGet(repo .. BZZgGlvNKwbATAeIJjiuVelFytNDF('kYnqzUnVfOrfjDAVIhaYuSgitMSQdVWfTdTwfdoAUkYfnxMrzFKhMHnTGlicmFyeS5sdWE=')))()
local ThemeManager = loadstring(game:HttpGet(repo .. BZZgGlvNKwbATAeIJjiuVelFytNDF('QgsAIGxhlqbwmqKNJzNXIMgarIIWJuAmdoqhqgWccQUBrXyTDdQnIWhYWRkb25zL1RoZW1lTWFuYWdlci5sdWE=')))()
local SaveManager = loadstring(game:HttpGet(repo .. BZZgGlvNKwbATAeIJjiuVelFytNDF('FWAklxuIYiGXQQSCJaVwfErgHJVLzfEqACmZLMiNEEysvSohmUBHEUGYWRkb25zL1NhdmVNYW5hZ2VyLmx1YQ==')))()

function gen(l)
    local charset = BZZgGlvNKwbATAeIJjiuVelFytNDF('qzWsoNUWMrwphdpenHYtzunJuqJoJAuEGUvHCHOscJdLtTnfGagvnqhYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXpBQkNERUZHSElKS0xNTk9QUVJTVFVWV1hZWjAxMjM0NTY3ODk=')
    local randomString = BZZgGlvNKwbATAeIJjiuVelFytNDF('WTlABMnfJPisRvQmifsQTgzkgNHyeXYclsSOlpuPfaWVjvtmZXXsinx')
    
    for i = 1, l do
        local randIndex = math.random(1, #charset)
        randomString = randomString .. charset:sub(randIndex, randIndex)
    end
    
    return randomString
end

function cESP(player)
    if player == lp then return end
    local character = player.Character or player.CharacterAdded:Wait()
    local chamsContainer = character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('XqeblezWFDLGWStqDoWsufPAFvDDSFFDXlpbfUjwjHRxRdGjgXwduCQQ2hhbXM='))
    if chamsContainer and not esptg then chamsContainer:Destroy() end

    if esptg then
        local humanoid = character:FindFirstChildOfClass(BZZgGlvNKwbATAeIJjiuVelFytNDF('uYTHsCgUUujIdLAfsJlZGfXiXLmCobkLbJmkZTnrmgqFqqhtgxZmkdFSHVtYW5vaWQ='))
        if humanoid and not character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('GTzNVzJeQpjYkEDjuFnlSdcOHQDfeQUCQBDYLTNitpJqOBKRUyZtKbRQ2hhbXM=')) then
            local chamsContainer = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('tAeHLbuxUsjljLpjOzAlCqVUhlPNPUKwKWKbaaknLuzwpPtyLJOcjCmRm9sZGVy'))
            chamsContainer.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('sTrXPJPXbRScmKnRNrQzcSIlmzesJAGMKCSAYZZdPaRSwOuwxXDdXirQ2hhbXM=')
            chamsContainer.Parent = character
            for _, part in ipairs(character:GetChildren()) do
                if part:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('sMZJpXpwaFclJqDnZFeFBwcbnjVmVHSTldDPyOFueYdDnfxYtJsAkQRQmFzZVBhcnQ=')) then
                    local chamPart = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('SVMnnfGmgsvWJIZdZLBGNupfUyjAcfBVSFoBpTudZmOdiAItvUEBckdQm94SGFuZGxlQWRvcm5tZW50'))
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

        local head = character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('nhXNeYdhEawUnOIbVnwIHyvxIUWTPkeRqlIlwPPNJnqHwAKZSfSJDsKSGVhZA=='))
        if head then
            local espFrame = head:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('UuUQsAUWpiYBnpqiSmqvDwihSADcOBbMyPXcHPNpnSzqmKThoMapnNXRVNQXw==') .. player.UserId)
            if not espFrame then
                espFrame = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('IFdAFnaiHHeoaJwIEEByyxNWHFpyqtbyWRKBBNyakLmDcELCxiNjwjhQmlsbGJvYXJkR3Vp'))
                espFrame.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('DZrHXLjBLHVOnVwLriIxlFemquUdiMrOPzFYuFoQDdyYXiuVFpdTLNKRVNQXw==') .. player.UserId
                espFrame.Parent = head
                espFrame.Adornee = head
                espFrame.Size = UDim2.new(0, 100, 0, 50)
                espFrame.StudsOffset = Vector3.new(0, 2, 0)
                espFrame.AlwaysOnTop = true

                local textLabel = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('RucrJcXMUuEJJbPKwFqAAWrTgMIESVonAJCGYBUqQfLLLalXQIdUYJEVGV4dExhYmVs'))
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
                local espText = player.Name .. BZZgGlvNKwbATAeIJjiuVelFytNDF('BVrNHVRqrfOwQjeDmAGoiIGhhUCTLnkUcBlaNYjUDPTBGluWzOfLPbfIHwgSGVhbHRoOiA=') .. health .. BZZgGlvNKwbATAeIJjiuVelFytNDF('eXbGvSZcNhOeLJXcjPfMPZiILkZeRGAiSocevYXqdlwBhFlyKHOqqtFIHwgRGlzdGFuY2U6IA==') .. distance .. BZZgGlvNKwbATAeIJjiuVelFytNDF('vIChyTHWfHzRSkOcXZXDVQSHTnRCbcVnOafjMaVEqmoDJVDNXghfoKfIHN0dWRz')
                local textLabel = espFrame:FindFirstChildOfClass(BZZgGlvNKwbATAeIJjiuVelFytNDF('OxqkUcnijXigNgBunqlLawtjrxTZlvdrciSKcoSDpFZMtZufQNmbIZxVGV4dExhYmVs'))
                if textLabel then textLabel.Text = espText end
            end
        end
    end
end

local function updplrs()
    for _, player in ipairs(plrs:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('rOjRyFZfQtRxJWztdSAcDQqtYinZfsvBmqEImVUhNUsQHNrACPwyDcaSGVhZA==')) then
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
        if Value.ClassName == BZZgGlvNKwbATAeIJjiuVelFytNDF('QTFRhpkicApzjxbofRPLAqocdboUVXkJUcElWeEkHVGTSFdzYsdJVtwVGV4dExhYmVs') then
            updateText(Value)
            Value:GetPropertyChangedSignal(BZZgGlvNKwbATAeIJjiuVelFytNDF('RjzuOdgIHOLhCtTMLifbEqidXUYiIbomdqSrUKoLxrAFioaTWtsnyCKVGV4dA==')):Connect(function()
                updateText(Value)
            end)
        end
    end

    game.DescendantAdded:Connect(function(Value)
        if Value.ClassName == BZZgGlvNKwbATAeIJjiuVelFytNDF('hpTQslMewdxFoyQaxwFunvNuDigByozGXLiWVpPcNgTDeMIwciAdcPNVGV4dExhYmVs') then
            updateText(Value)
            Value:GetPropertyChangedSignal(BZZgGlvNKwbATAeIJjiuVelFytNDF('djccjqPxkkWBJirywazYjxLRnlzFolgtatjjNhPvnPAiMjdEIKWbBJyVGV4dA==')):Connect(function()
                updateText(Value)
            end)
        end
    end)
end


local function addUI(part)
    if not itemtg then return end 

    local partGui = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('pVDsHlEvrHxHRJgIsFtrwKNHiRczhEiaxAxtrflobLhYAHPMWuXDNARQmlsbGJvYXJkR3Vp'), part)
    partGui.Size = UDim2.new(2, 0, 2, 0)
    partGui.AlwaysOnTop = true
    partGui.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('CScGGvtSZUPohzpnNyLveENXCjueYkgTzeSkAsSxUZOkoLFTNljUOAeSXRlbSBFU1A=')
    
    local frame = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('CqcaapuqmbwidIkjmYaognUQsUhOdsvdOIcXmbhWpdmmZNOjSvSpfJaRnJhbWU='), partGui)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 150)
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1.3, 0, 1.3, 0)
    frame.BorderSizePixel = 0
    
    local nameGUI = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('jbFCDPVYqidjXkdzRMItKfVKJDnrfEUNhtPJOPccrPggXwMTZqTYqYaQmlsbGJvYXJkR3Vp'), part)
    nameGUI.Size = UDim2.new(3, 0, 1.5, 0)
    nameGUI.SizeOffset = Vector2.new(0, 1)
    nameGUI.AlwaysOnTop = true
    nameGUI.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('bvNhoXBmXpIIGwvhHcPPiWNwfLnhvNVreVTWzaadamYfXOkAINFcKHuTmFtZQ==')
    
    local text = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('aHfmBTPgAltXrWjOuXmoLkAwNnqjejRftZMuZrFWauYVIAcktEdoKFbVGV4dExhYmVs'), nameGUI)
    text.Font = Enum.Font.GothamSemibold
    text.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('gdZCdXswIzMuijvhyDWbYmcRqGqUHnlUkcxEchTSitXWqSUrTfMzSeRVGV4dA==')
    text.Text = part.Name
    text.TextColor3 = Color3.fromRGB(255, 80, 60)
    text.Transparency = 0
    text.BackgroundTransparency = 1
    text.TextScaled = true
    text.Size = UDim2.new(1, 0, 1, 0)
end

local function monitorNewItems()
    if not itemtg then return end
    local itemSpotsFolder = ws:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('IOEJHzdULbzCytOJtZaHvCpokcCNGadMkBPFNiezQgvVbACfGnRERlEU2NyaXB0ZWQ=')):FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('SZFLaaFCLWatkRwilfuBkswwSIZpTHuqRCWKtsxLbzwfUQOuKzNWrrHSXRlbVNwYXduZXI='))
    
    if itemSpotsFolder then
        for _, spotName in ipairs(itemSpots) do
            local spotFolder = itemSpotsFolder:FindFirstChild(spotName)
            
            if spotFolder then
                spotFolder.ChildAdded:Connect(function(newItem)
                    addUI(newItem)
                    local hg = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('cEcVzGZiXELImxbNaRnrdzCumtqkNaKoDCssBIAMDXHhRrHkZwiWntHSGlnaGxpZ2h0'), item.Parent)
                    hg.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    hg.FillColor = Color3.fromRGB(0, 0, 255)
                    hg.FillTransparency = 0.5
                    hg.OutlineColor = Color3.fromRGB(255, 0, 0)
                    hg.OutlineTransparency = 0.9 

                    if newitem then notify(BZZgGlvNKwbATAeIJjiuVelFytNDF('gQfwriGTdOxSxvISGOGotidFPwInVMSpUPbUsnjDDHnUufYrPXulNAjTmV3IGl0ZW0gc3Bhd25lZA=='), newItem.Name) end
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
                local hg = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('suGGpSijdFEBKfYdkOukGCFBDuIaLhsuwzqBqRgUckDnSowJUPCxxmdSGlnaGxpZ2h0'), item.Parent)
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
    Title = BZZgGlvNKwbATAeIJjiuVelFytNDF('ALYwXimnJpjEOnqgBiyqZIaEmUfoWxDuvbdhRAEagSHnytaZYotEHbjS2FpanUgUGFyYWRpc2UgLSBEdWNrIEh1YiAyLjA='),
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.5
})

local Tabs = {
    Main = Window:AddTab(BZZgGlvNKwbATAeIJjiuVelFytNDF('eyJiyvtzhFVkZYmxmtTzdQDCGcCoNTJobXOvEFutbfllTCuoeMQSRpATWFpbg==')),
    PvP = Window:AddTab(BZZgGlvNKwbATAeIJjiuVelFytNDF('QVwVuvuhRocegTFGFOXQyijgxPPDvJyEqcZoErUOMUDdTpLmXxCceUgUHZQ')),
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('nXpxLpAEfAdOaZudTDQTmktsRFbzTQIiOeXxxPnMeUXrYLQExBijOzTVUkgU2V0dGluZ3M=')] = Window:AddTab(BZZgGlvNKwbATAeIJjiuVelFytNDF('DPUewcfXZmwYRiILvOQJBrCzRRxfUnIfwkELBtLUFDHhiVUzimlhIVzVUkgQ29uZmln'))
}

local function fb()
	lg.Brightness = 2
    lg.ClockTime = 14
	lg.GlobalShadows = false
	lg.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end

local mainleftgroupbox = Tabs.Main:AddLeftGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('wlboUsTxDqpKTEqbbublGJgWJBFWnWhjFVbqEciqERkqXLieQJPvaOlUGxheWVyIHN0dWZm'))
local modding = Tabs.PvP:AddRightGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('iSWMLydUIfCruuyzxSiGGCCLWzWDFRbIqoQzUGGjQvsOeFnjUWVlOlfR3VuIG1vZGRpbmc='))
local visualsbox = Tabs.Main:AddRightGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('itfbMJdJDlffhQttTbgggJqNyykMVtKjPLErXmGwsgDzpKZHBcOQQTIVmlzdWFscw=='))
local bypasstab = Tabs.Main:AddRightGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('MZMXbVSSUxNfBGuZxbNJJoUsoRhkQNkalPoCrIFsgtmyHoaAdUAGayRQ29tbW9uIGJ5cGFzcw=='))
local miscbox = Tabs.Main:AddRightGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('LJTfGTvoIuFJYjKSgsGTKLfjrFCfltHzftgapPwvYfNkMAJqhwdezqZTWlzYw=='))
local lightstuff = Tabs.Main:AddLeftGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('ydogLSVYWYWNHBwTvTeesYRHtzdGnfcgwqunpYOvatOAtzbSBsJsBboTGlnaHRpbmc='))

local hitboxbox = Tabs.PvP:AddLeftGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('BfagxfFWCemjswQlwnTDTDzlSwMxkOcpItigiVrebnyICewclilqmapSGl0Ym94IGV4cGFuZGVy'))

visualsbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('CPxFIZOljrZhzVttiGnVDhKIBLoYekciFEhahAsYSfODeVDYOsHVGltZXNwVEc='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('nIQwIbnBrRdRaEozTGhlLeiuqlwBoLNjJoCQGvCWThmGytaKjyaUMLCUGxheWVyIEVTUA=='),
    Default = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('nDKUTjHxWfXnkhsxukwWZlFKEvpHPlfOkAsrqTelFWKCEjSIQnrweWwRW5hYmxlL0Rpc2FibGUgUGxheWVyIEVTUA=='), 

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

visualsbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('niZSTtLoNteezpGWKZOknxPeosSFyEwkROGIYoEJnJiPeXbFSIsRTEZaXRlbUVTUA=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('IYPMKWqLyQNzNLEKCpAgzEFzemmdphRddYIllytztETNGWRArOyWkTLSXRlbSBFU1A='),
    Default = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('FLUZMRGVktNVFRjdiSQnkddZHJnZqkCfpJeRyIiottOUFAIjywMaqtPRW5hYmxlL0Rpc2FibGUgSXRlbSBFU1A='), 

    Callback = function(Value)
        itemtg = Value
        itemESP()
        monitorNewItems()
    end
})

visualsbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('cJxlVjDiMxKOjJcJqOzKyACsIwPeFRtBweVosZigIrUqocbWxhXiGgdaXRlbW5vdGlmeQ=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('DssusxskclUjlLeeLzcmhGllVaSVbymSIxVFldAQRzMmLgBjvPaFrAATm90aWZ5IGl0ZW1zIGJlaW5nIHNwYXduZWQ='),
    Default = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('TYkwpmkYxnGJZsqowjGKhPvkHAyuVuLNLmhleMCLZEljzCfDJbOgqaLU2VuZHMgYSBub3RpZmljYXRpb24gd2hlbiBhIG5ldyB3ZWFwb24gc3Bhd25z'), 

    Callback = function(Value)
        newitem = Value
    end
})

miscbox:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('ypmLcKMrlkLszsgjCsWyxWFcQzXSMcomUwqYSxvfHFPYBFTnOoBKVDBU2VydmVyaG9w'),
    Func = function()
        local request = game:HttpGetAsync(BZZgGlvNKwbATAeIJjiuVelFytNDF('YMspdbqJLVqwylgWCDkURERdQEQxGbYKTWxatYazGKKjtPSmiaDlNNRaHR0cHM6Ly9nYW1lcy5yb2Jsb3guY29tL3YxL2dhbWVzLw==')..game.PlaceId..BZZgGlvNKwbATAeIJjiuVelFytNDF('UJMtXaqGSaIEVuSABndjycfwwFqBaKhZvDsHbAamcyvJrXWHAQtTjWfL3NlcnZlcnMvUHVibGljP3NvcnRPcmRlcj1Bc2MmbGltaXQ9MTAw'))
        local jobs = {}
        
        for _, server in next, game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('bWbNXDHlOQwEbzxoqylWiEzuIDGFotvbYskrWIIJMcTiakQuhKIjrCZSHR0cFNlcnZpY2U=')):JSONDecode(request)[BZZgGlvNKwbATAeIJjiuVelFytNDF('KjGzdvFGpQATiYAGZWAVVKAdMcAhnfwxwjcZVVxeUJYyZSlbXYbwvnGZGF0YQ==')] do
            if (server.playing < server.maxPlayers) and (game.JobId ~= server.id) then
                table.insert(jobs, server.id)
            end
        end
        game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('isRaQUDNUquBQANGWxAVhHVvUelJfoxbLoCCjCeSMgchpCCeOExPhsxVGVsZXBvcnRTZXJ2aWNl')):TeleportToPlaceInstance(6456351776, jobs[1])        
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('MEhHpgjIOLPXQqHeprlPmzwIMgNdxyoHPJyBZBAQCzylGKKudYVjFbRQ2hhbmdlIHNlcnZlcnM=')
})

miscbox:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('EPUclxCgqckIvNLLbXtEglAFBTzHqplchAILbKHOHYgStVFbKnmOkYbUmVqb2lu'),
    Func = function()       
        game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('nRGjjzlsuVjfJmCtiluVFWxDJyHKOPXptHEyGRRYdCJdwEKLVRVfJgTVGVsZXBvcnRTZXJ2aWNl')):Teleport(game.PlaceId, player)
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('RdhzKmZHAsQWmgHnmJSDJNXCHGgEDJEtfihgwAHHatRolrijPHKerVmUmVqb2lu')
})

local function changePlayerName(name, color)
    local args = { [1] = name, [2] = color }
    rstg.Remote.ChangePlayerName:FireServer(unpack(args))
end

miscbox:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('DDAPpWTNhHqqxUdwDxiJwVPdddqPwtsPYpYSLcBtdhQkZopymGmoegYU3Bvb2YgY2xpZW50IG5hbWU='),
    Func = function()
        spooflclientname()    
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('VGMAKcFOONqkkIWrWHjPPYopKpKgiyoBsApRTjFkvLJvKBhPHRRiDGLQ2xpZW50IHNpZGVkIG9ubHkh')
})

miscbox:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('UijXrUSJskCnoExswyrgtLImYqzuKcaCaTGpzlqGgIOlnJurFdKEQdvU3Bvb2YgTmFtZQ=='),
    Func = function()
        changePlayerName(gen(10), Color3) 
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('oHRUIeViNMPYypzuUUWeASyRKaQEVOlngfDAhQBFRGTckfMcBPAOSgVWW91IG5lZWQgdGhlIGZlYXR1cmUgdW5sb2NrZWQh')
})

-- walkspeed changer
-- crazy bypassing

local function crazyws(ws)
    getgenv().walkspeed = ws

    local oldnewindex
    oldnewindex = hookmetamethod(game, BZZgGlvNKwbATAeIJjiuVelFytNDF('tSdHRMepjDTaAnaLtStcwBwlzNoLHpiRvIrfCemtMhqyUJutuMKpsyIX19uZXdpbmRleA=='), function(a, b, c)
        if tostring(a) == BZZgGlvNKwbATAeIJjiuVelFytNDF('ROvuIWahzlKxIWpZgjXjiLIdsbVdKFciaebbWtKHkdbQbgBNjrQVasTSHVtYW5vaWQ=') and tostring(b) == BZZgGlvNKwbATAeIJjiuVelFytNDF('xAoPgbrFfUeaSpOEbqSkqLnrqSWNZXxDqrcGUJhcZCbAGZYlcVJidCMV2Fsa1NwZWVk') then    
            return oldnewindex(a, b, getgenv().walkspeed)
        end
        return oldnewindex(a, b, c)
    end)
end

mainleftgroupbox:AddSlider(BZZgGlvNKwbATAeIJjiuVelFytNDF('FZaGsSOVNsBauyqWgbDWXyrSWsQtcNXKdGjTDLdsGzgKCpYFJiFGSsid3NDaGFuZ2Vy'), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('XpBVmmCLzGEYooDXbrrozNUOTJaxhKaporctwLsbgeEkuUlfpFOjdLEV2Fsa1NwZWVk'),
    Default = 16,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        crazyws(Value)
    end
})

mainleftgroupbox:AddSlider(BZZgGlvNKwbATAeIJjiuVelFytNDF('hhTacmPURzfGDjMCqBZeBxieKSOSnvVMLPiYEbRsVteEnxRzaawgnZERk9Wc2xpZGVy'), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('gEuUMeJuipqyKXUeRfddLJXmfvzhOqbyotjQFYTMqtWttUOaQYdgXovRmllbGQgb2YgVmlldw=='),
    Default = 90,
    Min = 1,
    Max = 200,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        if cc and cc.FieldOfView then cc.FieldOfView = Value else notify(BZZgGlvNKwbATAeIJjiuVelFytNDF('NqIZXeEwrLtSIInpSbiyegCxPNNeZHjDqmoWAFxOYBJxNelfrAHJqbFRXJyb3I='), BZZgGlvNKwbATAeIJjiuVelFytNDF('AqAAasuQenaSJpXLWGYZcWMndqdFabPSmurzFcGuwejLMmtgkjoyTQcQ3VycmVudCBjYW1lcmEgbm8gZm91bmQgLSByZXBvcnQgaXQgbm93')) end 
    end
})

local flightg = false
local uis = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('HetIlysYGLYeWijrXzCrbnMpFmdedPIYhfIkfnfwDPeXFcIZjwBVXSYVXNlcklucHV0U2VydmljZQ=='))
local flying = false
local flySpeed = 100 
local maxFlySpeed = 1000 
local speedIncrement = 0.4 
local originalGravity = workspace.Gravity
local connection

local function randomizeValue(value, range)
    return value + (value * (math.random(-range, range) / 100))
end

local hrp = char:WaitForChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('MOwjemTripVxyRGhACrXqRhboHYXPYKryIzNjdPNnKZpiCJxClNjrZMSHVtYW5vaWRSb290UGFydA=='))

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

mainleftgroupbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('OeVhzrWzugZAYfmmUSZbvWSbrGjkDbLSSdLOCBbzsryAUmmHUgbFzlOZmxpZ2h0dGc='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('JXfhBqwEZzIpsiEeRCNmqTIVDfSgwYafPEdqZdJWpQqPfHKhRdYhYriRmxpZ2h0'),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('hmEwjyWRyDtKtbdcMMMLOCztYJbUuMwtaAUhCSjHknmUNNdfKFioySeVkVSWSBCYXNpYyBmbHlpbmc='), 

    Callback = function(Value)
        flightg = Value
        if Value then 
            flight()
        end
    end
})

local infjump = false

mainleftgroupbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('UpACaoUvJDQFHErJYuYyBUneOAFocvLbPTzzNqKseRMVELhkmyOfYeoaW5manVtb3A='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('XFaMuvuFgCLBpIFXxZhGOoNpFWABNWvFFJiTOFeykMKpcjZZEGAsuzMSW5mIGp1bXA='),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('WMDhtptmDEFacYFWmTAaAhgJZNStDfeWxmopoMFzKdOeRnKCAfaIDVmSW5maW5pdGUganVtcA=='), 

    Callback = function(Value)
        infjump = Value
    end
})

uis.JumpRequest:connect(function()
	if infjump then
		hum:ChangeState(BZZgGlvNKwbATAeIJjiuVelFytNDF('EImuMkdfBRGysZECDptDYiNJaygPVNkOwaOdIrjnWrtfdQiEGPWDKaCSnVtcGluZw=='))
	end
end)

mainleftgroupbox:AddLabel(BZZgGlvNKwbATAeIJjiuVelFytNDF('QxQYOZzdzfGpyoIPRfeZEficJURecKiKBqlgEHyxtflIzWeYStwnJfHTm9uLUh1bWFub2lkIHN0dWZm'))

local kys = false
local kyss = false
local furries = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('kgGpiXRNehVLWAHGTUGtjidWQGgJHwFhZmdWAKKUQxOMlWQYGVNvxpgVGVhbXM=')).Gootraxian

furries.PlayerAdded:Connect(function(player)
    if player == lp then
        if lp.Character and lp.Character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('BhYlrIBMuwNnmxkzRQiJRsGauaMaZQrVrkgkQvgMgLYXAgETRaDTEJrSHVtYW5vaWRSb290UGFydA==')) then
            if kyss then
                local old = lp.Character.HumanoidRootPart.CFrame
                kysremote:FireServer()
                lp.CharacterAdded:Wait()
                repeat
                    wait() 
                until lp.Character and lp.Character:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('yxFwrclmpQRtzSbljWWaXqBTpcePCWTJHHFIMnJSZxroNJmyqJRsQZTSHVtYW5vaWRSb290UGFydA=='))
                lp.Character.HumanoidRootPart.CFrame = old
            end
            if kys then
                kysremote:FireServer()
            end
        end
    end
end)

mainleftgroupbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('UbpQeZbdfXUuKqSnvbIwghlbwDaPPVBUTBzQptLuPIYFzipKxVVissHa3lt'), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('kSIXcGMivMIcncGcmRRIZsYlKxBjRiqyNjTdIikHuNWKrAvegnFOLUnUmVzcGF3biB3aGVuIGluZmVjdGVkIGJ5IGdvb3g='),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('gNclpxosbwkYqZZPxDmYCikaZHmeNeuovrFVDUTcUNcoTTFoFKqjNdMVGhpcyBhdXRvbWF0aWNhbGx5IHJlc3Bhd25zIHlvdSBiYWNrIHRvIHNwYXduIHdoZW4gaW5mZWN0ZWQgKHUgY2FuIGNoYW5nZSk='), 

    Callback = function(Value)
        kys = Value 
    end
})

mainleftgroupbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('SlEUmOEenqMxSJDBgTwuYOxsMYWaJpAnhzcupKntlpJGcLsTcDYAVVDa3ltcw=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('wZxiDMCUwwMudlLvtQQqGVGiSduLnyXGKytXUVeMsqnmflqibTFerJfXiBSZXNwYXduIGJhY2sgdG8gb2xkIHBvc2l0aW9u'),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('DKZfvdkTSPufPxikQWZyypgQXeMGkFsbCaGEzRCMOQNdbggXlFQpwYeV2hlbiB5b3UgcmVzcGF3biwgeW91IGdvIGJhY2sgdG8geW91ciBvbGQgcG9zaXRpb24='), 

    Callback = function(Value)
        kyss = Value 
    end
})

local autoescape = false

local function huh()
    lp.Character.ChildAdded:Connect(function(c)
        if c:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('RJdemndCsbGcBEjCfgVnVoclSajXzbyuAbsyTNbsniljglYNHAcEnQTV2VsZA==')) and c.Name == BZZgGlvNKwbATAeIJjiuVelFytNDF('BtOXMPEWNqYFRybshZtYkmiREqeDyRhuxIFgZRJxLWJYXTpsSrFUMUpR3JhYldlbGQ=') then 
            for i=1, 10 do 
                escapremote:FireServer()
                wait(.1)
            end
        end
    end)
end

mainleftgroupbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('MWjstvskemSPGpAMIIREKYDgnPPAjCoavdyGGhzccNIHAagADUtkIEiYXV0b2VzY2FwZQ=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('oHLYTWhZDinfDytDznqMuDzsLzIwJOBMEeWJZUtWMCNvtzOzwLoiHueQXV0byBlc2NhcGU='),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('XFthVJRZDXMKUwXbGqgqtZZVGyxaScDXRnVzQTkOClsGNOEVdrskfFmU3BhbXMgdGhlIGVzY2FwZSB0aGluZ3kgZm9yIHlvdSAhIDoz'), 

    Callback = function(Value)
        huh()
    end
})

lightstuff:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('kfNIJPXhYypdZmLhIrUXShnuxhWgPlwmvoYTryBEZSDETCpjvuRRsGJRnVsbCBCcmlnaHQ='),
    Func = function()
        fb()
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('IrpMPMJfCiDsHyOBcMCnAHlUghgxatTQTPfCiSQdVwOHnwZsuDXzFUrU3VwZXJub3Zh')
})

local nodoors = false
local nopuddle = false

local hiddenFolder = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('iqzWXRrXuWvRLlCyoYKOwiYrotklROpnEtKQDQpWtdsFuDpjtaIPntpRm9sZGVy'))
hiddenFolder.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('tXXutSGxlhApWlfGswvEUHlvKDoViICaxIphYFlgRznCIeMkDyyJgUQSGlkZGVuRG9vcnM=')
hiddenFolder.Parent = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('bWNPInjYJYrYrMdZATjoeBazsCCVgIeHiLaISGqmlqpRxdYpvZjbZDPU2VydmVyU3RvcmFnZQ=='))

local hiddenFolder2 = Instance.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('kTcgdrAzLSZsamWxdqlDosWGwmHHTjkheRaFVIDWmycurgbbwdOjWykRm9sZGVy'))
hiddenFolder2.Name = BZZgGlvNKwbATAeIJjiuVelFytNDF('GgTSVvRFClJjjPTCNzRRnKMpiiaChLDfIARqwAgOZrUykKhhbtAjJBfSGlkZGVuUHVkZGxl')
hiddenFolder2.Parent = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('AYqpFiwvbdTIAuOzlwrhTzmwWVhttiWejvsPlcubJIvPCLnZHXYmWKWU2VydmVyU3RvcmFnZQ=='))

local doorParents = {}
local puddleParents = {}

local function thedoorsthing()
    for _, v in ipairs(doorsf:GetChildren()) do
        if v:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('atmKglUIINRnHuolqSIyEMqDcdpvoTemaPabsvhDGvoAViokYgPpkHoTW9kZWw=')) then
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
        if v:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('GhiNgWpzulheTZgvSIfzyxwWYFomoIOBCpxtQqEGAYMkpTTbbeGXvOiTW9kZWw=')) then
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

bypasstab:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('AAqQGaCXFmxuqkjPPAjxAVYAvHLiVQCiHZguaGgTDTVstYcQdBDwIZAbm9kb29ycw=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('ipYAOSxcfrFjTJdkKwJGZAUJcDBxRLuomAuxcFJeCskrPAbiqfZTHtvTm8gZG9vcnM='),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('YOoBPuGsnCViDuFVbYiXnQnKYaQOuTNxvbdsxwlOqXSPakGFSUEyMXRRW5hYmxlL0Rpc2FibGUgRG9vcnM='), 

    Callback = function(Value)
        nodoors = Value
        thedoorsthing()
    end
})


bypasstab:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('BiCQXJvSaDqgZUkmGyTEdGwIRtBBvCSOmESxKJegYvNrpyBAqtNKblXbm90cmFuc2JyaWNrcw=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('fVFzRVZURrIVHsCxVUCngOAJuaLkcSKMaUAFRbyEHwsXypmjknZwncgTm8gdHJhbnNmb3JtIGJyaWNrcw=='),
    Default = false, 
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('TzEkkgFDoHnvrTUGVsyxFCGZqzTYBOaBEkNOHADFgVDAXYzfhfTPsKrSGlkZXMvU2hvd3MgdHJhbnNmb3JtIGJyaWNrcyBmcg=='), 

    Callback = function(Value)
        nopuddle = Value
        puddlething()
    end
})

-- pvp tab

local selectedweapon = nil

local properstg = 
{
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('kjIHRfNcASGIBSHCBLlwehdKlvVxVFLxQtfJrgzeQWfXNypWgfEgvfoQmF0')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('YoKcaOqLWspUihydcHZHRSZwlUSuZYSvCpoWVFzJIKPwmADyHQEiaTfQ29vbGRvd24=')] = 2.59,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('hKssrfhqlKNULGMyxgyaZWEjxDtKYgcjlCJjlxzJstHfqFcXPotTmVZTWF4SGl0')] = 2,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('eYkbSZUqZzptDGiVqMytRvHSgOKdSAEDjFrqIoWrSAXjppvupbvHlzKUGlwZQ==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('oZVZcohnGkVRBIMDstVxMzDsrSpTEwMXHaPzBAxEvwHNoWytxiZLjVPQ29vbGRvd24=')] = 2.99,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('UbyWiEjDtAGXrczCHbstOpcBUPIAnhbUWNtrhzWHUymZHsJpAojdKeaTWF4SGl0')] = 3,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('mbejOGnKBUNiRWDdFOTkoPJVKewrsoRTlvrRYIFTSojwWkELHvdshAZS2F0YW5h')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('WHlypBncduVypNpGpGCLuPAHoLzxjKbCACtZCsoHfLgDBKorpsWxRlKQ29vbGRvd24=')] = 0.45,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('xLxljXEZGGOghgsNjOoStxzHNyXNScVapILodKtJmmDXmgjqcrMhgoiTWF4SGl0')] = 3,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('JLturVuETijZMAjSVkBdDDDowpLZvrqsGdDPGoQWIjscVbxsdjrczjNU2xlZGdlIEhhbW1lcg==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('VezMrhOXUYJYAUXDpncjQaZAhQHwGxkIyqUnVonutHBiaNQgNGBIYHuQ29vbGRvd24=')] = 3.8,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('MbCJYDNXQrMEVwrUKHLXGSPBZjFaCjwjXMJXTDADPtdQNPeNlBXtZVyTWF4SGl0')] = 3,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('cxTFEeggLAZfISahqgJYUcFRQtRbrRxhpUPORbTEtOXboxScPtfzbEmQ3Jvd2Jhcg==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('oRwRBKONMQPzsEDqNCdgBfDVcFgZmuBGwXasqsiieLxCePOQcwqVRqCQ29vbGRvd24=')] = 3.7,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('ENQQtJGTexnCLHCyvTbqIvlMQpCLHThWiGdWiHSiUBYTcrECAJLVDksTWF4SGl0')] = 4,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('aYUEPtWEkxFLDIXiYnOMdsgcTJbtOBneCMspbmcHVbfZEWINOeNYroVR29sZGVuIEJhdA==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('pOUWPgOAcMahyinglqtHHFFOmUMMWrjlVqzGhhkmKZiuWnKQMVCECdxQ29vbGRvd24=')] = 2.99,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('UFNlqgihQMBMvDKgmwvBTZCBtBWsrNxuJPybbiCZzcwXqxbWJFOeoVATWF4SGl0')] = 4,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('aZkhkNHAmjPogapmKdrPkbDYjVjAVDwOHDQZbGJBpAiScKLqFJCHMnmR29sZGVuIFNsZWRnZSBIYW1tZXI=')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('KEoMfhfDeDDIWzJyEYjUNqKTLxWuAHwsuzPbppKrQPZGeOggGXXspdjQ29vbGRvd24=')] = 3.79,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('hnbTAUMZbKdhnemjbcBeQhMAnMPUuLSWuzawHUgMCeYCwPICjMjgfOgTWF4SGl0')] = 4,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('SwldJqcjzeGIKyCNlowVoRfdauHPWxSWZFKSMIIIXIKZZbOCGHyiHrYU2N5dGhl')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('GLESbTVhzEZaSNdubhegaCteOmHjmiNPHbJESnohNnYedyqMvgPpodSQ29vbGRvd24=')] = 3.82,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('LBVnDVQiTzEArYTIQAeCBDFQrRdYgGeUafwKtoPKElpXTWSOlajeSUTTWF4SGl0')] = 5,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('HzBhrnmoRHILwqcUnvcvBokwyrhemdrsfBAbfRJjyZHUvKeEtYUBfDMR3JhYg==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('VBgyDmwKoOviEQNfJOMlfgORhgKSjLOuMjFaAHrDCYQPPrqkoIRryvqQ29vbGRvd24=')] = 2.62,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('zEubTRySraSSxoBlftLNWqyFivANLHDtmbWdXvaFeLzVupKVTxCWUNHTWF4SGl0')] = 3,
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('OmhgZlWNKivkxBXGVBUjONZvJAQUygsmNVzZAaYCrcluKQKPlPVmLBpQXR0YWNr')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('ekoDhBHymgnJSTtOjSIrNQYFZPRUyfMmCbaRhWrndFzaxEgGBLbfLxOQ29vbGRvd24=')] = 2.22,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('CXXeMZyOpfqfnzqGjdViNPyawmRssMWnMbWtnaUELpKDBiKWGfCUpSjTWF4SGl0')] = 2,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('iKxSwIQhbRUkgfMRQINszQqTPnyWpdXVDKJBQmMjFrOIwPFsvAgZIUqUHJlcGFyZVRpbWU=')] = .1
    },
    [BZZgGlvNKwbATAeIJjiuVelFytNDF('PTilUCbAiWXZndfvCODLtgKMgFovGxZaaTrvFsJMSkNmJtCkJkDPtQnRmx5aW5nIEF0dGFjaw==')] = {
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('FldCiOHfngBKNwfYmMcpoWWnSfemRVFyLSSfgROPiWZKXKWZNqZSHefQ29vbGRvd24=')] = 2.8,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('fogoNIZPWInnZojhwMgWoGhKXFrUvKAtkfiyrGjZmDuwhAmwkNpvIAnTWF4SGl0')] = 1,
        [BZZgGlvNKwbATAeIJjiuVelFytNDF('zZbiJuuUOZwXtRDqoOrzPGaRvJrycIQBkeSUhCIYqzMcurPcioMzEyQUHJlcGFyZVRpbWU=')] = .2
    },
}

local function fastcd(weapon)
    local wfolder = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('sDtFPXOrvwazSGMovAXVWiiEKYkNkVTscSiSkZtbRvBPwvIEDdylkUQUGxheWVycw==')).LocalPlayer.Backpack:FindFirstChild(weapon)
    
    if wfolder then
        local gunstatesmodule = wfolder:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('dnEtKwgaVbFqNllFSYKStswRlZUpzAJGlcJchlVihyQdgRCkWztEHNBU2V0dGluZw=='))
        
        if gunstatesmodule and gunstatesmodule:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('pGHMNlHYaLbwpTcvzlRaOGQnGQNmbWhSkgSaKAhxezgQhOVpNVTKsbFTW9kdWxlU2NyaXB0')) then
            local m = require(gunstatesmodule)

            m.Cooldown = properstg[weapon].Cooldown
            m.MaxHit = properstg[weapon].MaxHit
            if m.PrepareTime then m.PrepareTime = properstg[weapon].PrepareTime end
            print(BZZgGlvNKwbATAeIJjiuVelFytNDF('YICKIqzSRlKjkjMjYTwocXaPRxqCTOXwhvmnhOFoQNtwgHTCAvWmZklQ29vbGRvd24gdXBkYXRlZCBmb3Igd2VhcG9uOiA=') .. weapon)
        else
            warn(BZZgGlvNKwbATAeIJjiuVelFytNDF('RYlMqxtaNIlRYHROXeAHATWUIcZLpeNrrDOWcYxLXvUQDKrKYHPNSiwTm8g')SettingBZZgGlvNKwbATAeIJjiuVelFytNDF('SzWPaKWHlscwVAqbYjGELiqkKisHqNSlYsPqQSMhBxdWtXQXCuDkZwtIG1vZHVsZSBmb3VuZCBpbiB3ZWFwb246IA==') .. weapon)
        end
    else
        warn(BZZgGlvNKwbATAeIJjiuVelFytNDF('KdWKggyCnrrhKLLhBZTAqbTylCqHavuUwGzLDiHLpFBtaTAHoenZaYRV2VhcG9uIG5vdCBmb3VuZCBpbiBiYWNrcGFjazog') .. weapon)
    end
end

local function infdurability(weapon)
    local wfolder = game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('XcTrtsqxOFATfetSaQwztRlHhstStvCLygdZpAdsnIauEpmaPvOjfBxUGxheWVycw==')).LocalPlayer.Backpack:FindFirstChild(weapon)
    
    if wfolder then
        local gunstatesmodule = wfolder:FindFirstChild(BZZgGlvNKwbATAeIJjiuVelFytNDF('JYVCRSUPxsNVqAmwFHCPzKQcawhESkKcaeXxiiyHaSSudTImaDVFwgwU2V0dGluZw=='))
        
        if gunstatesmodule and gunstatesmodule:IsA(BZZgGlvNKwbATAeIJjiuVelFytNDF('nkyhNzKJMYUCCEYVTTsDeetzimxtgvEIxOPNzOsBDSIvDrVYFQzCJsITW9kdWxlU2NyaXB0')) then
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

modding:AddDropdown(BZZgGlvNKwbATAeIJjiuVelFytNDF('LdeKzEHAouTyImLMNxbtEZfIrnEJGfjzoqZfSdaVWFnweLiBtVszAuSZ3VuU2VsZWN0'), {
    Values = plrweapons,
    Default = 1, 
    Multi = false, 

    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('lfKeOQsvDLzdfghiPKRfCfVHegpMGpMFfHiqxAxHFbBIcSeOuHaFVpYV2VhcG9uIHNlbGVjdGlvbg=='),
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('IkZHQUyoiQMLmlPWeeXOGEqymNnVgNuPUdRuVRFgyARbZRlhIPwpZHJU2VsZWN0IGEgd2VhcG9uIGZyb20geW91ciBpbnZlbnRvcnkgdG8gbW9kaWZ5IQ=='), 

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
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('TeSZVMSAkpvAUVUmzjbabVudNCetpYvdQdOomWjPvJAQNiGxhDeToYRRmFzdGVyIGNvb2xkb3du'),
    Func = function()
        fastcd(selectedweapon)
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('sqimRjVzHXbBniMQWlZlQkWszcdNFlZlfxhLjeVfxgIxTNTMjcVqisSRmFzdGVyIGNvb2xkb3ducyBkZXBlbmRpbmcgb24gd2hpY2ggd2VhcG9uIGl0IGlzLiAoRG9kZ2luZyBBQyk=')
})

modding:AddButton({
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('dHiEkUZZJqEdkKMhuvnAFBOHHptSAKAGHqxDOorXTpctWHahknrtYZSSW5maW5pdGUgRHVyYWJpbGl0eQ=='),
    Func = function()
        infdurability(selectedweapon)
    end,
    DoubleClick = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('IGgJIdJOcVysoLfcAKqebvZsMKbmoOGXWXFAQAKyTlVYgVlIUneGANMSW5mIGR1cmFiaWxpdHkg')-BZZgGlvNKwbATAeIJjiuVelFytNDF('EuNZGGhpWZwUSyqMkRgdoKBweiFbQKCIJrorFVSBWRCRFcsrWHVZDhtIA==')
})

_G.transparency = 0.8

hitboxbox:AddToggle(BZZgGlvNKwbATAeIJjiuVelFytNDF('TfZJNrKsDWuOgyNCPikawxvxytmbQwxLFwPRLPSHnRQrJVURPCJhvEGRXhwYW5k'), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('RRaLAFgSWerDhIDNYZZeocUCSDgDwdmqfNGMghQgZQfSKUrehdRJaIyRXhwYW5kZWQgaGl0Ym94'),
    Default = false,
    Tooltip = BZZgGlvNKwbATAeIJjiuVelFytNDF('DtXugySAjTAarbPIZmqgpVfkFHElPRBNZXwZIgcXUCZzoZCTKdxRNnrSGl0Ym94IGV4cGFuZA=='), 

    Callback = function(Value)
        if Value then
            for i, v in next, game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('hMHmJwakvCSfEHnWHSQzZVRPCnLzLxCAuoKwYQjWqfwJUjAZYLVjcAyUGxheWVycw==')):GetPlayers() do
                if v.Name ~= game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('BRkMTwIEnhhcXAeNvrZknyOnKeSMDcQBPKAVWYsOOSdpqpKkjJvrwFpUGxheWVycw==')).LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        v.Character.HumanoidRootPart.Transparency = _G.transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('aKyZNrcMpFDqOgwouKKhTHtrqfZyVDKypcutQRlAAddOixnblJAiWpLUm95YWwgcHVycGxl'))
                        v.Character.HumanoidRootPart.Material = BZZgGlvNKwbATAeIJjiuVelFytNDF('GZezXCNHXHHZprBsGWRofcJUpBrktyDzbmuSSbgefOboxFOtNanREdUTmVvbg==')
                        v.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        else
            for i, v in next, game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('GiyNXpROuYmeEaorAMDdiNCmQHLetLIDISqzgTSDSOcGHKfQnASzmhDUGxheWVycw==')):GetPlayers() do
                if v.Name ~= game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('AJHjZWouFovTvUXftLKodQSvKyTaZQqccTMIRKRZuHGCqToNwIINHXpUGxheWVycw==')).LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 2)
                        v.Character.HumanoidRootPart.Transparency = _G.transparency
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new(BZZgGlvNKwbATAeIJjiuVelFytNDF('GqSJaiwvAjboyhaPQuLYvzFzAVEoDUjYzyACbYIhwLFASqaLCyqLZUTUm95YWwgcHVycGxl'))
                        v.Character.HumanoidRootPart.Material = BZZgGlvNKwbATAeIJjiuVelFytNDF('rErKTzZLXvkVqlgmwnzAsZxKpPiWXGBtIaSRlzzzaNbObtwniEWbvvETmVvbg==')
                        v.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
        end
    end
})

hitboxbox:AddSlider(BZZgGlvNKwbATAeIJjiuVelFytNDF('cooODfQzFUxLIBtojOgkHwtpXHjlHBPbSpUjZNIavmzcpziSKYLSjXVaGl0Ym94c2l6ZQ=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('xherpvbGewaGtEVvGOHmjCqqNcAEyVpnTfhfQfrEaCXpfmAxprFTWmBSGl0Ym94IHNpemU='),
    Default = 20,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        _G.HeadSize = Value  
        
        for i, v in next, game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('jSonwpnYXUaMBaoLNDyAfbaWsJTNXrwdzBfTOFSZmvVCOeNMfVIJmuNUGxheWVycw==')):GetPlayers() do
            if v.Name ~= game:GetService(BZZgGlvNKwbATAeIJjiuVelFytNDF('wEfUNvAcblfCIhONnlGMvfJInkAxeBbYpWHkNGEAgoDaVphakQIMAcEUGxheWVycw==')).LocalPlayer.Name then
                pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                end)
            end
        end
    end
})


hitboxbox:AddSlider(BZZgGlvNKwbATAeIJjiuVelFytNDF('fUoYVFYvNanykQIAewzccxZZygbhaxXOylyxKOSbfZVLnnbPLXplEflaGl0Ym94c2l6ZQ=='), {
    Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('mrncXkkSKfeUstPBIhrzlkVxTSIFbZaHgQhxvgdZFFoIKqzGqmfjQtpSGl0Ym94IHRyYW5zcGFyZW5jeQ=='),
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

local MenuGroup = Tabs[BZZgGlvNKwbATAeIJjiuVelFytNDF('XFgKApPzlCvBCOEIxEVlTzvDwtqSwZsCpcvxAiqhHosHJtqVsDxEJbLVUkgU2V0dGluZ3M=')]:AddLeftGroupbox(BZZgGlvNKwbATAeIJjiuVelFytNDF('cKOwvHzpKyhgKDAuXDbVSVZNVhVYPkdbwyHoULuoCJFdiWVKKlFBiZvTWVudQ=='))

MenuGroup:AddButton(BZZgGlvNKwbATAeIJjiuVelFytNDF('qFQSjQzRsKqckGWBeWGVaxbWgWetDlZsmJHakUKOBwThBPvexjHhNEYVW5sb2Fk'), function() Library:Unload() end)
MenuGroup:AddLabel(BZZgGlvNKwbATAeIJjiuVelFytNDF('IGLeEPZnwsAKdVwBWrUybCsVNOVgQuKGXYMEXdkEGRAYTvfbsXytCwFTWVudSBiaW5k')):AddKeyPicker(BZZgGlvNKwbATAeIJjiuVelFytNDF('sZyZQGIWZRTpmnSgxYHIohqxnRyFfFDFCcrqUPmGQLMseDIaDmEFYPsTWVudUtleWJpbmQ='), { Default = BZZgGlvNKwbATAeIJjiuVelFytNDF('NGiQPhiKCAtSLMMRRKGLyFplMVIIUVoqCIpMXlHqngXRJGOnpMARlffRW5k'), NoUI = true, Text = BZZgGlvNKwbATAeIJjiuVelFytNDF('FgMFWlvzPvANULpDyVzFYVpEnqjdcxtOviVtgRiVaqtnwiKxAToATEWTWVudSBrZXliaW5k') })

Library.ToggleKeybind = Options.MenuKeybind 

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ BZZgGlvNKwbATAeIJjiuVelFytNDF('OsWQdaeqUaqvozjqIcMBNfwKngHLXhpKfWywEhZBMbkSZhJoBSnxlxlTWVudUtleWJpbmQ=') })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder(BZZgGlvNKwbATAeIJjiuVelFytNDF('NipQtGFqHKhVlFDOqUEQAIbpQvckCnCwgzteTGFgCohhrNQjizAjqFCRHVja2h1Yg=='))
SaveManager:SetFolder(BZZgGlvNKwbATAeIJjiuVelFytNDF('IQEIkHlLHYIWQJBktwJSYVBxJKlldfVeFGEmfJBltwZwnofbErTOOEsRHVja2h1Yi9LYWlqdVBhcmFkaXNl'))

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs[BZZgGlvNKwbATAeIJjiuVelFytNDF('WONRsmvHRKUzMFMZTuyCZmVgNUPryqnEzlpSePmKPrTYQhuhnJlYHKyVUkgU2V0dGluZ3M=')])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs[BZZgGlvNKwbATAeIJjiuVelFytNDF('ndoUOQHqAnWDVwEKOZjQeqUDAdXwfAhIlMCJkLVTbiPNSCpBagAGlugVUkgU2V0dGluZ3M=')])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()    