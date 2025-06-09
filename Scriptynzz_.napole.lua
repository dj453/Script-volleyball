-- SCRIPTYONEZZ1 - Script GUI do Volleyball Legends
if getgenv().YONEZZ_LOADED then return end
getgenv().YONEZZ_LOADED = true

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "Scriptynzz",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "YONEZZ1"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddSlider({
    Name = "Increase Ball Hitbox",
    Min = 10,
    Max = 50,
    Default = 20,
    Increment = 1,
    ValueName = "Size",
    Callback = function(value)
        getgenv().HitboxSize = value
        -- código para modificar o hitbox da bola aqui
    end
})

MainTab:AddToggle({
    Name = "Show Enemy Direction",
    Default = false,
    Callback = function(value)
        getgenv().ShowEnemyDirection = value
        -- código para mostrar direção do inimigo aqui
    end
})

MainTab:AddToggle({
    Name = "Auto Spin/Skill",
    Default = false,
    Callback = function(value)
        getgenv().AutoSpin = value
        -- código para automação de rotação de habilidade
    end
})

MainTab:AddSlider({
    Name = "Player Walk Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Increment = 1,
    ValueName = "WalkSpeed",
    Callback = function(value)
        local plr = game.Players.LocalPlayer
        if plr and plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.WalkSpeed = value
        end
    end
})

MainTab:AddSlider({
    Name = "Jump Power",
    Min = 50,
    Max = 150,
    Default = 50,
    Increment = 5,
    ValueName = "JumpPower",
    Callback = function(value)
        local plr = game.Players.LocalPlayer
        if plr and plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.JumpPower = value
        end
    end
})

OrionLib:Init()
