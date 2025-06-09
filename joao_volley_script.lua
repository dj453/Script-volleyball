--[[
🥇 Script João Volley (Cryptic Executor) – Load via loadstring()
Funções:
✔️ GUI para configurações
✔️ Aumento da bola (hitbox)
✔️ Velocidade & pulo
✔️ Auto‑spin ao ganhar
✔️ Salvar / carregar configs
--]]

-- Services
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local ConfigFile = "JoaoVolleyConfig.json"

-- Default config
local config = {
  hitboxSize = 50,
  speed = 80,
  jump = 120,
  autoSpin = true
}

-- Funções salvar/carregar
local function loadConfig()
  if isfile(ConfigFile) then
    local data = readfile(ConfigFile)
    config = HttpService:JSONDecode(data)
  else
    writefile(ConfigFile, HttpService:JSONEncode(config))
  end
end

local function saveConfig()
  writefile(ConfigFile, HttpService:JSONEncode(config))
end

-- GUI
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0,250,0,200)
Frame.Position = UDim2.new(0,20,0,20)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

local UIList = {
  -- title
  Instance.new("TextLabel", Frame),
  -- sliders and toggles
}

Frame[1].Size = UDim2.new(1,0,0,30)
Frame[1].BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame[1].Text = "🔥 João Volley Config"

-- [Aqui você deve construir sliders (hitbox, speed, jump) usando TextBoxes + Buttons ou GuiSlider]
-- Ao alterar, atualize config e chame saveConfig()

-- Aplicar configurações
local function applySettings()
  -- Hitbox
  for _,ball in pairs(workspace:GetDescendants()) do
    if ball:IsA("Part") and ball.Name:lower():find("ball") then
      ball.Size = Vector3.new(config.hitboxSize,config.hitboxSize,config.hitboxSize)
      ball.Transparency = 0.4
      ball.Material = Enum.Material.Neon
    end
  end
  -- Player
  local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
  char:WaitForChild("Humanoid").WalkSpeed = config.speed
  char.Humanoid.JumpPower = config.jump
end

-- Auto‑spin
spawn(function()
  while RunService.RenderStepped:Wait() do
    if config.autoSpin then
      local stats = LocalPlayer:FindFirstChild("leaderstats") or LocalPlayer
      local spins = stats:FindFirstChild("Spins")
      if spins and spins.Value > 0 then
        local rs = game:GetService("ReplicatedStorage")
        if rs:FindFirstChild("SpinStyle") then
          rs.SpinStyle:FireServer()
        end
      end
    end
  end
end)

-- Inicialização
loadConfig()
applySettings()

-- Monitorar alterações via GUI
-- [Implemente conexão dos elementos UIList com config...]

-- Finalizado
print("🎯 João Volley rodando!")
