
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local CoreGui = game:GetService("CoreGui")

-- GUI principal
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "JoaoVolleyGui"
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 300)
Frame.Position = UDim2.new(0, 50, 0, 50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

-- Título
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
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

-- Container
local Content = Instance.new("Frame", Frame)
Content.Position = UDim2.new(0, 0, 0, 35)
Content.Size = UDim2.new(1, 0, 1, -35)
Content.BackgroundTransparency = 1

-- Hitbox Info
local hitboxSize = 5
local maxSize = 50
local minSize = 0

local HitboxValueLabel = Instance.new("TextLabel", Content)
HitboxValueLabel.Position = UDim2.new(0, 10, 0, 10)
HitboxValueLabel.Size = UDim2.new(1, -20, 0, 20)
HitboxValueLabel.BackgroundTransparency = 1
HitboxValueLabel.TextColor3 = Color3.new(1, 1, 1)
HitboxValueLabel.Text = "Tamanho da Hitbox: " .. hitboxSize
HitboxValueLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Botão Aumentar Hitbox
local IncreaseButton = Instance.new("TextButton", Content)
IncreaseButton.Position = UDim2.new(0, 10, 0, 40)
IncreaseButton.Size = UDim2.new(0, 130, 0, 30)
IncreaseButton.Text = "Aumentar Hitbox"
IncreaseButton.BackgroundColor3 = Color3.fromRGB(40, 120, 40)
IncreaseButton.TextColor3 = Color3.new(1, 1, 1)

-- Função aumentar hitbox
IncreaseButton.MouseButton1Click:Connect(function()
    if hitboxSize < maxSize then
        hitboxSize += 5
        HitboxValueLabel.Text = "Tamanho da Hitbox: " .. hitboxSize
        local ball = workspace:FindFirstChild("Ball") or workspace:FindFirstChildWhichIsA("Part")
        if ball then
            ball.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
        end
    end
end)

-- Minimizar/Restaurar menu
local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    Content.Visible = not minimized
end)
