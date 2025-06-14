
-- Yonezz Fly Hub 2.0 (Corrigido por ChatGPT e DJ Luka)
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local toggleFly = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local speedLabel = Instance.new("TextLabel")
local closeButton = Instance.new("TextButton")

gui.Name = "YonezzFlyGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

frame.Parent = gui
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.1, 0, 0.2, 0)
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Active = true
frame.Draggable = true

title.Parent = frame
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 0, 0, 0)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "🛸 Yonezz Fly Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18

up.Parent = frame
up.Position = UDim2.new(0, 10, 0, 40)
up.Size = UDim2.new(0, 60, 0, 30)
up.Text = "↑"
up.Font = Enum.Font.SourceSans
up.TextSize = 20
up.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
up.TextColor3 = Color3.fromRGB(255, 255, 255)

down.Parent = frame
down.Position = UDim2.new(0, 10, 0, 80)
down.Size = UDim2.new(0, 60, 0, 30)
down.Text = "↓"
down.Font = Enum.Font.SourceSans
down.TextSize = 20
down.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
down.TextColor3 = Color3.fromRGB(255, 255, 255)

toggleFly.Parent = frame
toggleFly.Position = UDim2.new(0, 80, 0, 40)
toggleFly.Size = UDim2.new(0, 100, 0, 70)
toggleFly.Text = "Fly"
toggleFly.Font = Enum.Font.SourceSansBold
toggleFly.TextSize = 22
toggleFly.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
toggleFly.TextColor3 = Color3.fromRGB(255, 255, 255)

closeButton.Parent = frame
closeButton.Position = UDim2.new(1, -25, 0, 5)
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 14
closeButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Fly system
local flying = false
local speed = 50
local UIS = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local velocity = Vector3.new(0, 0, 0)

toggleFly.MouseButton1Click:Connect(function()
    flying = not flying
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

up.MouseButton1Click:Connect(function()
    speed = speed + 10
end)

down.MouseButton1Click:Connect(function()
    speed = math.max(10, speed - 10)
end)

runService.RenderStepped:Connect(function()
    if flying then
        local cam = workspace.CurrentCamera
        local dir = Vector3.new()
        if UIS:IsKeyDown(Enum.KeyCode.W) then dir += cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then dir -= cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then dir -= cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then dir += cam.CFrame.RightVector end
        hrp.Velocity = dir.Unit * speed
    end
end)
