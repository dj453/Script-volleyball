-- SCRIPTYONEZZ1 - Script GUI do Volleyball Legends if getgenv().YONEZZ_LOADED then return end getgenv().YONEZZ_LOADED = true

-- Variáveis globais getgenv().HitboxSize = 20 getgenv().PowerfulServe = false getgenv().AutoSpin = false getgenv().AutoFarm = false getgenv().AutoJoin = false

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({ Name = "Scriptynzz", HidePremium = false, SaveConfig = true, ConfigFolder = "YONEZZ1" })

local MainTab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false })

MainTab:AddSlider({ Name = "Increase Ball Hitbox", Min = 10, Max = 50, Default = 20, Increment = 1, ValueName = "Size", Callback = function(value) getgenv().HitboxSize = value local rs = game:GetService("ReplicatedStorage") local hitbox = rs.Assets and rs.Assets.Hitboxes and rs.Assets.Hitboxes:FindFirstChild("Ball") if hitbox then hitbox.Size = Vector3.new(value, value, value) print("Ball hitbox set to:", value) end end })

MainTab:AddToggle({ Name = "Show Enemy Direction", Default = false, Callback = function(value) getgenv().ShowEnemyDirection = value -- código para mostrar direção do inimigo aqui end })

MainTab:AddToggle({ Name = "Auto Spin/Skill", Default = false, Callback = function(value) getgenv().AutoSpin = value -- código para automação de rotação de habilidade end })

MainTab:AddSlider({ Name = "Player Walk Speed", Min = 16, Max = 100, Default = 16, Increment = 1, ValueName = "WalkSpeed", Callback = function(value) local plr = game.Players.LocalPlayer if plr and plr.Character and plr.Character:FindFirstChild("Humanoid") then plr.Character.Humanoid.WalkSpeed = value end end })

MainTab:AddSlider({ Name = "Jump Power", Min = 50, Max = 150, Default = 50, Increment = 5, ValueName = "JumpPower", Callback = function(value) local plr = game.Players.LocalPlayer if plr and plr.Character and plr.Character:FindFirstChild("Humanoid") then plr.Character.Humanoid.JumpPower = value end end })

MainTab:AddToggle({ Name = "Powerful Serve (press Z)", Default = false, Callback = function(value) getgenv().PowerfulServe = value end })

game:GetService("UserInputService").InputBegan:Connect(function(input, gpe) if input.KeyCode == Enum.KeyCode.Z and getgenv().PowerfulServe then local service = game:GetService("ReplicatedStorage").Packages._Index["[email protected]"].knit.Services.GameService service.RF.Serve:InvokeServer(Vector3.new(), math.huge) end end)

MainTab:AddToggle({ Name = "Auto Farm", Default = false, Callback = function(value) getgenv().AutoFarm = value if value then task.spawn(function() while getgenv().AutoFarm do -- código de farm automático aqui task.wait(0.5) end end) end end })

MainTab:AddToggle({ Name = "Auto Join Match", Default = false, Callback = function(value) getgenv().AutoJoin = value if value then task.spawn(function() local gui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Interface") if gui and gui:FindFirstChild("TeamSelection") then while getgenv().AutoJoin do for i = 1, 6 do local btn = gui.TeamSelection:FindFirstChild("2") and gui.TeamSelection["2"][tostring(i)] if btn and btn:IsA("TextButton") then btn:Activate() end end task.wait(1) end end end) end end })

OrionLib:Init()

