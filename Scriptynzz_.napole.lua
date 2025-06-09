
-- SCRIPTYONEZZ1 - Volleyball Legends GUI Script

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
    Name = "Aumentar Hitbox da Bola",
    Min = 10,
    Max = 50,
    Default = 20,
    Increment = 1,
    ValueName = "Tamanho",
    Callback = function(Value)
        getgenv().HitboxSize = Value
        -- Aqui entra o código para modificar a hitbox da bola
    end    
})

MainTab:AddToggle({
    Name = "Mostrar direção do inimigo",
    Default = false,
    Callback = function(Value)
        getgenv().ShowEnemyDirection = Value
        -- Aqui entraria o código para mostrar a direção do inimigo
    end    
})

MainTab:AddToggle({
    Name = "Auto Spin/Skill",
    Default = false,
    Callback = function(Value)
        getgenv().AutoSpin = Value
        -- Código para automatizar rotação de skills
    end    
})

MainTab:AddSlider({
    Name = "Velocidade do Jogador",
    Min = 16,
    Max = 100,
    Default = 16,
    Increment = 1,
    ValueName = "WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

MainTab:AddSlider({
    Name = "Altura do Pulo",
    Min = 50,
    Max = 150,
    Default = 50,
    Increment = 5,
    ValueName = "JumpPower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

OrionLib:Init()
