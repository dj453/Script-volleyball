
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

-- Criar GUI
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "JoaoVolleyGui"
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 300)
Frame.Position = UDim2.new(0, 20, 0, 20)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Text = "🔥 João Volley Menu"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

-- Botão de Auto Girar
local SpinButton = Instance.new("TextButton", Frame)
SpinButton.Size = UDim2.new(1, -20, 0, 30)
SpinButton.Position = UDim2.new(0, 10, 0, 40)
SpinButton.Text = "🌀 Ativar Auto-Girar"
SpinButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpinButton.Font = Enum.Font.SourceSans
SpinButton.TextSize = 18
local spinEnabled = false

SpinButton.MouseButton1Click:Connect(function()
    spinEnabled = not spinEnabled
    SpinButton.Text = spinEnabled and "🌀 Auto-Girar: ON" or "🌀 Auto-Girar: OFF"
    -- Aqui pode colocar a lógica do spin automático
end)

-- Botão de Hitbox
local HitboxButton = Instance.new("TextButton", Frame)
HitboxButton.Size = UDim2.new(1, -20, 0, 30)
HitboxButton.Position = UDim2.new(0, 10, 0, 80)
HitboxButton.Text = "🏐 Aumentar Hitbox da Bola"
HitboxButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HitboxButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxButton.Font = Enum.Font.SourceSans
HitboxButton.TextSize = 18

HitboxButton.MouseButton1Click:Connect(function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") and v.Name:lower():find("ball") then
            v.Size = Vector3.new(50, 50, 50)
        end
    end
end)

-- Título da Seção Configurações
local ConfigTitle = Instance.new("TextLabel", Frame)
ConfigTitle.Size = UDim2.new(1, -20, 0, 20)
ConfigTitle.Position = UDim2.new(0, 10, 0, 130)
ConfigTitle.Text = "⚙️ Configurações"
ConfigTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfigTitle.BackgroundTransparency = 1
ConfigTitle.Font = Enum.Font.SourceSans
ConfigTitle.TextSize = 16
ConfigTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Caixa de texto para nome
local NameBox = Instance.new("TextBox", Frame)
NameBox.Size = UDim2.new(1, -20, 0, 30)
NameBox.Position = UDim2.new(0, 10, 0, 160)
NameBox.PlaceholderText = "Digite seu nome"
NameBox.Text = ""
NameBox.Font = Enum.Font.SourceSans
NameBox.TextSize = 18
NameBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
NameBox.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Botão Salvar
local SaveButton = Instance.new("TextButton", Frame)
SaveButton.Size = UDim2.new(0.48, -10, 0, 30)
SaveButton.Position = UDim2.new(0, 10, 0, 200)
SaveButton.Text = "💾 Salvar"
SaveButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.Font = Enum.Font.SourceSans
SaveButton.TextSize = 18

-- Botão Carregar
local LoadButton = Instance.new("TextButton", Frame)
LoadButton.Size = UDim2.new(0.48, -10, 0, 30)
LoadButton.Position = UDim2.new(0.52, 10, 0, 200)
LoadButton.Text = "📂 Carregar"
LoadButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.Font = Enum.Font.SourceSans
LoadButton.TextSize = 18

-- Função de salvar localmente (via HttpService em Json na memória)
local savedName = nil
SaveButton.MouseButton1Click:Connect(function()
    savedName = NameBox.Text
end)

LoadButton.MouseButton1Click:Connect(function()
    if savedName then
        NameBox.Text = savedName
    end
end)
