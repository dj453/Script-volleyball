
--[[
  Nome: ScriptYONEZZ
  Descrição: Interface gráfica inspirada no Napoleon Hub, sem sistema de key e sem links externos.
  Funções incluídas: Aumentar Hitbox da bola, Auto Spin, Rejoin, entre outras seguras para aprendizado.
  Jogo alvo: Volleyball (ajustado para funcionar especificamente nesse estilo de jogo)
--]]

if getgenv().volleyballyonezzLoaded then return end
getgenv().volleyballyonezzLoaded = true

local repo = 'https://raw.githubusercontent.com/raydjs/Obsidian/main/'
local Library = nil

while true do
    local success, data = pcall(function()
        return loadstring(game:HttpGet(repo .. 'Library.lua'))()
    end)
    if success then
        Library = data
        break
    end
    task.wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Window = Library:CreateWindow({
    Title = "ScriptYONEZZ",
    Footer = "Volley Script v1.0",
    Icon = 105747086514734,
    NotifySide = "Right",
    ShowCustomCursor = true,
    MobileButtonsSide = "Left",
})

local Tabs = {
    Main = Window:AddTab("Main"),
    Utility = Window:AddTab("Utility"),
    MiniBar = Window:AddMiniBar(),
}

Tabs.Main:AddLabel({
    Text = "Funções principais",
    Size = 18,
})

-- Função: Aumentar Hitbox da Bola (estilo Napoleon)
Tabs.Main:AddButton({
    Text = "Aumentar Hitbox da Bola",
    Func = function()
        for _, ball in pairs(workspace:GetDescendants()) do
            if ball:IsA("BasePart") and ball.Name:lower():find("ball") then
                ball.Size = Vector3.new(50, 50, 50)
                ball.Transparency = 0.3
                ball.Material = Enum.Material.Neon
                ball.Color = Color3.fromRGB(255, 50, 50)
                ball.CanCollide = false
                ball.Anchored = false
            end
        end
        Library:Notify("Hitbox aumentada estilo Napoleon!", 4)
    end
})

-- Função: Auto Spin Habilidades
Tabs.Main:AddButton({
    Text = "Auto Spin Habilidades",
    Func = function()
        local spinEvent = LocalPlayer:FindFirstChild("Spin")
        if spinEvent and spinEvent:IsA("RemoteEvent") then
            for _ = 1, 10 do
                spinEvent:FireServer()
                task.wait(0.5)
            end
            Library:Notify("Auto Spin concluído!", 4)
        else
            Library:Notify("Evento 'Spin' não encontrado.", 4)
        end
    end
})

-- Função: Aumentar Velocidade e Pulo
Tabs.Utility:AddButton({
    Text = "Aumentar Velocidade e Pulo",
    Func = function()
        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("Humanoid").WalkSpeed = 50
        char:WaitForChild("Humanoid").JumpPower = 100
        Library:Notify("Velocidade e pulo aumentados!", 4)
    end
})

-- Função: Reentrar no jogo
Tabs.Utility:AddButton({
    Text = "Reentrar no Jogo",
    Func = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
})

-- MiniBar
Tabs.MiniBar:AddButton({
    Text = "Fechar GUI",
    Func = function()
        Library:Unload()
    end,
})

Tabs.MiniBar:AddButton({
    Text = "Minimizar",
    Func = function()
        if Window:IsVisible() then Window:Hide() else Window:Show() end
    end,
})
