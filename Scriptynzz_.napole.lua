-- SCRIPTYONEZZ1 - Versão Simples (sem OrionLib) if getgenv().YONEZZ_LOADED then return end getgenv().YONEZZ_LOADED = true

-- Variáveis Globais getgenv().HitboxSize = 20 getgenv().PowerfulServe = false getgenv().AutoSpin = false getgenv().AutoFarm = false getgenv().AutoJoin = false

-- Ajusta Hitbox da Bola (executa uma vez) local function setHitbox(size) local rs = game:GetService("ReplicatedStorage") local hitbox = rs.Assets and rs.Assets.Hitboxes and rs.Assets.Hitboxes:FindFirstChild("Ball") if hitbox then hitbox.Size = Vector3.new(size, size, size) print("Hitbox da bola ajustada para:", size) end end

-- Serve Poderoso com Tecla Z game:GetService("UserInputService").InputBegan:Connect(function(input, gpe) if input.KeyCode == Enum.KeyCode.Z and getgenv().PowerfulServe then local service = game:GetService("ReplicatedStorage").Packages._Index["[email protected]"].knit.Services.GameService service.RF.Serve:InvokeServer(Vector3.new(), math.huge) end end)

-- Função para loop de AutoFarm spawn(function() while getgenv().AutoFarm do -- Código de farm automático aqui wait(0.5) end end)

-- Auto Join Match spawn(function() while getgenv().AutoJoin do local gui = game.Players.LocalPlayer:FindFirstChild("PlayerGui") if gui and gui:FindFirstChild("Interface") and gui.Interface:FindFirstChild("TeamSelection") then for i = 1, 6 do local btn = gui.Interface.TeamSelection["2"] and gui.Interface.TeamSelection["2"][tostring(i)] if btn and btn:IsA("TextButton") then pcall(function() btn:Activate() end) end end end wait(1) end end)

-- Interface Simples via Prompt print("[SCRIPTYONEZZ] Script carregado com sucesso!") print("Use os comandos abaixo no Console para ativar/desativar funções:") print("- setHitbox(valor)  --> Ex: setHitbox(40)") print("- getgenv().PowerfulServe = true") print("- getgenv().AutoFarm = true") print("- getgenv().AutoJoin = true") print("- getgenv().AutoSpin = true")

