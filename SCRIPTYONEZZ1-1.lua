if getgenv().ScriptYONEZZLoaded then return end
getgenv().ScriptYONEZZLoaded = true

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

-- Adiciona texto básico no Main para garantir que aparece
Tabs.Main:AddLabel({
    Text = "Menu Principal",
    Size = 20,
})

-- Botão exemplo: aumentar hitbox da bola
Tabs.Main:AddButton({
    Text = "Aumentar Hitbox da Bola",
    Func = function()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") and (obj.Name:lower():find("ball") or obj.Name:lower():find("volley")) then
                obj.Size = Vector3.new(50, 50, 50)
                obj.Transparency = 0.3
                obj.Material = Enum.Material.Neon
                obj.Color = Color3.fromRGB(255, 50, 50)
                obj.CanCollide = false
                obj.Anchored = false
            end
        end
        Library:Notify("Hitbox aumentada!", 4)
    end
})

-- Botão para aumentar velocidade e pulo
Tabs.Utility:AddButton({
    Text = "Aumentar Velocidade e Pulo",
    Func = function()
        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("Humanoid").WalkSpeed = 50
        char:WaitForChild("Humanoid").JumpPower = 100
        Library:Notify("Velocidade e pulo aumentados!", 4)
    end
})

-- MiniBar com fechar e minimizar
Tabs.MiniBar:AddButton({
    Text = "Fechar GUI",
    Func = function()
        Library:Unload()
    end,
})

Tabs.MiniBar:AddButton({
    Text = "Minimizar GUI",
    Func = function()
        if Window:IsVisible() then Window:Hide() else Window:Show() end
    end,
})
