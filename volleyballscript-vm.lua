
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

-- Botão Minimizar
local MinimizeButton = Instance.new("TextButton", Frame)
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -35, 0, 0)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
MinimizeButton.TextColor3 = Color3.new(1,1,1)
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.TextSize = 20

local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    for _, child in ipairs(Frame:GetChildren()) do
        if child ~= Title and child ~= MinimizeButton then
            child.Visible = not minimized
        end
    end
end)

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
end)

-- Hitbox Slider
local HitboxLabel = Instance.new("TextLabel", Frame)
HitboxLabel.Size = UDim2.new(1, -20, 0, 20)
HitboxLabel.Position = UDim2.new(0, 10, 0, 80)
HitboxLabel.Text = "🏐 Tamanho da Hitbox: 20"
HitboxLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxLabel.BackgroundTransparency = 1
HitboxLabel.Font = Enum.Font.SourceSans
HitboxLabel.TextSize = 16

local HitboxSlider = Instance.new("TextBox", Frame)
HitboxSlider.Size = UDim2.new(1, -20, 0, 30)
HitboxSlider.Position = UDim2.new(0, 10, 0, 100)
HitboxSlider.Text = "20"
HitboxSlider.PlaceholderText = "Digite valor (1–50)"
HitboxSlider.Font = Enum.Font.SourceSans
HitboxSlider.TextSize = 18
HitboxSlider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
HitboxSlider.TextColor3 = Color3.fromRGB(255, 255, 255)

HitboxSlider.FocusLost:Connect(function()
    local value = tonumber(HitboxSlider.Text)
    if value and value >= 1 and value <= 50 then
        HitboxLabel.Text = "🏐 Tamanho da Hitbox: " .. value
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Part") and v.Name:lower():find("ball") then
                v.Size = Vector3.new(value, value, value)
                if not v:FindFirstChild("BillboardGui") then
                    local bb = Instance.new("BillboardGui", v)
                    bb.Size = UDim2.new(0, 100, 0, 20)
                    bb.StudsOffset = Vector3.new(0, value/2 + 2, 0)
                    bb.AlwaysOnTop = true
                    local txt = Instance.new("TextLabel", bb)
                    txt.Size = UDim2.new(1, 0, 1, 0)
                    txt.BackgroundTransparency = 1
                    txt.TextColor3 = Color3.new(1,1,1)
                    txt.Text = "Hitbox: "..value
                    txt.Font = Enum.Font.SourceSansBold
                    txt.TextSize = 14
                else
                    v.BillboardGui.TextLabel.Text = "Hitbox: "..value
                end
            end
        end
    else
        HitboxSlider.Text = "20"
    end
end)

-- Título da Seção Configurações
local ConfigTitle = Instance.new("TextLabel", Frame)
ConfigTitle.Size = UDim2.new(1, -20, 0, 20)
ConfigTitle.Position = UDim2.new(0, 10, 0, 140)
ConfigTitle.Text = "⚙️ Configurações"
ConfigTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfigTitle.BackgroundTransparency = 1
ConfigTitle.Font = Enum.Font.SourceSans
ConfigTitle.TextSize = 16
ConfigTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Caixa de texto para nome
local NameBox = Instance.new("TextBox", Frame)
NameBox.Size = UDim2.new(1, -20, 0, 30)
NameBox.Position = UDim2.new(0, 10, 0, 170)
NameBox.PlaceholderText = "Digite seu nome"
NameBox.Text = ""
NameBox.Font = Enum.Font.SourceSans
NameBox.TextSize = 18
NameBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
NameBox.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Botão Salvar
local SaveButton = Instance.new("TextButton", Frame)
SaveButton.Size = UDim2.new(0.48, -10, 0, 30)
SaveButton.Position = UDim2.new(0, 10, 0, 210)
SaveButton.Text = "💾 Salvar"
SaveButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.Font = Enum.Font.SourceSans
SaveButton.TextSize = 18

-- Botão Carregar
local LoadButton = Instance.new("TextButton", Frame)
LoadButton.Size = UDim2.new(0.48, -10, 0, 30)
LoadButton.Position = UDim2.new(0.52, 10, 0, 210)
LoadButton.Text = "📂 Carregar"
LoadButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LoadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadButton.Font = Enum.Font.SourceSans
LoadButton.TextSize = 18

-- Função de salvar localmente
local savedName = nil
SaveButton.MouseButton1Click:Connect(function()
    savedName = NameBox.Text
end)

LoadButton.MouseButton1Click:Connect(function()
    if savedName then
        NameBox.Text = savedName
    end
end)

-- Linha de mira dos rivais
local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("Head") then
            local head = plr.Character.Head
            local look = head.CFrame.LookVector

            local existing = head:FindFirstChild("AimLine")
            if not existing then
                local part = Instance.new("Part")
                part.Name = "AimLine"
                part.Anchored = true
                part.CanCollide = false
                part.Size = Vector3.new(0.1, 0.1, 10)
                part.Material = Enum.Material.Neon
                part.Color = Color3.fromRGB(255, 0, 0)
                part.Parent = head
            end

            local line = head:FindFirstChild("AimLine")
            line.CFrame = CFrame.new(head.Position + look * 5, head.Position + look * 15)
        end
    end
end)
