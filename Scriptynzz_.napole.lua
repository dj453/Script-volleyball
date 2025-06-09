-- Scriptynzz_napole.lua

if getgenv().ScriptynzzLoaded then return end
getgenv().ScriptynzzLoaded = true

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

local Window = Rayfield:CreateWindow({
   Name = "ScriptYONEZZ Hub",
   LoadingTitle = "ScriptYONEZZ",
   LoadingSubtitle = "by João",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Scriptynzz",
      FileName = "ScriptynzzSettings"
   },
   Discord = { Enabled = false },
   KeySystem = false
})

local MainTab = Window:CreateTab("🏐 Main")
local Section = MainTab:CreateSection("Funções de Jogo")

-- Aumentar Hitbox da Bola
MainTab:CreateToggle({
   Name = "Aumentar Hitbox da Bola",
   CurrentValue = false,
   Callback = function(state)
      getgenv().AumentarHitbox = state
      if state then
         for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "ball" then
               v.Size = Vector3.new(50, 50, 50)
               v.Transparency = 0.4
               v.Material = Enum.Material.Neon
            end
         end
      else
         for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "ball" then
               v.Size = Vector3.new(5, 5, 5)
               v.Transparency = 0
               v.Material = Enum.Material.Plastic
            end
         end
      end
   end,
})

-- Mostrar Direção do Inimigo
MainTab:CreateToggle({
   Name = "Mostrar Direção do Inimigo",
   CurrentValue = false,
   Callback = function(state)
      getgenv().MostrarDirecao = state
      while state and wait(1) do
         for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
               local head = player.Character:FindFirstChild("Head")
               if head and not head:FindFirstChild("DirecaoBillboard") then
                  local billboard = Instance.new("BillboardGui", head)
                  billboard.Name = "DirecaoBillboard"
                  billboard.Size = UDim2.new(0, 100, 0, 30)
                  billboard.StudsOffset = Vector3.new(0, 2, 0)
                  billboard.AlwaysOnTop = true

                  local label = Instance.new("TextLabel", billboard)
                  label.Size = UDim2.new(1, 0, 1, 0)
                  label.BackgroundTransparency = 1
                  label.Text = "➡"
                  label.TextColor3 = Color3.fromRGB(255, 255, 0)
                  label.TextScaled = true
               end
            end
         end
      end
      -- Desligar
      for _, player in pairs(game.Players:GetPlayers()) do
         if player.Character and player.Character:FindFirstChild("Head") then
            local gui = player.Character.Head:FindFirstChild("DirecaoBillboard")
            if gui then gui:Destroy() end
         end
      end
   end,
})
