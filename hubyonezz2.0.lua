



-- Yonezz fly hub--

 
local principal = Instância.new("ScreenGui")

Quadro local = Instância.new("Quadro")

local up = Instância.new("TextButton")

local down = Instance.new("TextButton")

onof local = Instância.new("TextButton")

TextLabel local = Instância.new("TextLabel")

local mais = Instance.new("TextButton")

velocidade local = Instance.new("TextLabel")

mina local = Instance.new("TextButton")

botão de fechamento local = Instance.new("TextButton")

local mini = Instância.new("TextButton")

local mini2 = Instância.new("TextButton")

 

main.Name = "principal"

main.Parent = jogo.Jogadores.JogadorLocal:EsperaPorCriança("GuiaDoJogador")

main.ZIndexBehavior = Enum.ZIndexBehavior.Irmão

main.ResetOnSpawn = falso

 

Frame.Parent = principal

Frame.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

Frame.BorderColor3 = Cor3.fromRGB(0, 0, 0)

Frame.Position = UDim2.new(0,100320168, 0, 0,379746825, 0)

Frame.Size = UDim2.new(0, 190, 0, 57)

 

up.Nome = "up"

up.Parent = Quadro

up.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

up.Size = UDim2.new(0, 44, 0, 28)

up.Font = Enum.Font.SourceSans

up.Text = "↑"

up.TextColor3 = Cor3.fromRGB(0, 0, 0)

up.TextSize = 14.000

 

para baixo.Nome = "para baixo"

para baixo.Parent = Quadro

down.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

para baixo.Posição = UDim2.novo(0, 0, 0,491228074, 0)

down.Size = UDim2.new(0, 44, 0, 28)

down.Font = Enum.Font.SourceSans

para baixo.Texto = "↓"

down.TextColor3 = Color3.fromRGB(0, 0, 0)

down.TextSize = 14.000

 

onof.Nome = "onof"

onof.Parent = Quadro

onof.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

onof.Posição = UDim2.novo(0,702823281, 0, 0,491228074, 0)

onof.Size = UDim2.new(0, 56, 0, 28)

onof.Font = Enum.Font.Michroma

onof.Text = "Voar"

onof.TextColor3 = Color3.fromRGB(0, 0, 0)

onof.TextSize = 14.000

 

TextLabel.Parent = Quadro

TextLabel.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

TextLabel.Position = UDim2.new(0,469327301, 0, 0, 0)

TextLabel.Size = UDim2.new(0, 100, 0, 28)

TextLabel.Font = Enum.Font.Michroma

TextLabel.Text = "Script criado por RylorHub"

TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.TextScaled = verdadeiro

TextLabel.TextSize = 14.000

TextLabel.TextWrapped = verdadeiro

 

plus.Nome = "mais"

mais.Parent = Quadro

mais.BackgroundColor3 = Cor3.fromRGB(255, 255, 255)

plus.Posição = UDim2.novo(0,231578946, 0, 0, 0)

plus.Size = UDim2.new(0, 45, 0, 28)

plus.Font = Enum.Font.SourceSans

mais.Texto = "+"

plus.TextColor3 = Color3.fromRGB(0, 0, 0)

plus.TextScaled = verdadeiro

plus.TextSize = 14.000

plus.TextWrapped = verdadeiro

 

velocidade.Nome = "velocidade"

velocidade.Parent = Quadro

velocidade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

velocidade.Posição = UDim2.novo(0,468421042, 0, 0,491228074, 0)

velocidade.Tamanho = UDim2.novo(0, 44, 0, 28)

velocidade.Fonte = Enum.Fonte.SourceSans

velocidade.Texto = "1"

velocidade.TextColor3 = Color3.fromRGB(0, 0, 0)

velocidade.TextScaled = verdadeiro

velocidade.TamanhoDoTexto = 14.000

velocidade.TextWrapped = verdadeiro

 

meu.Nome = "meu"

meu.Parent = Quadro

meu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

mine.Posição = UDim2.new(0,231578946, 0, 0,491228074, 0)

mine.Size = UDim2.new(0, 45, 0, 29)

meu.Fonte = Enum.Fonte.SourceSans

meu.Texto = "-"

meu.TextColor3 = Color3.fromRGB(0, 0, 0)

mine.TextScaled = verdadeiro

mine.TextSize = 14.000

mine.TextWrapped = verdadeiro

 

closebutton.Name = "Fechar"

closebutton.Parent = main.Frame

closebutton.BackgroundColor3 = Cor3.fromRGB(255, 5, 5)

closebutton.Font = "Michroma"

closebutton.Size = UDim2.new(0, 45, 0, 28)

closebutton.Text = "x"

closebutton.TextSize = 30

closebutton.Posição = UDim2.new(0, 0, -1, 27)

 

mini.Nome = "minimizar"

mini.Parent = main.Frame

mini.BackgroundColor3 = Cor3.fromRGB(117, 117, 117)

mini.Font = "Michroma"

mini.Tamanho = UDim2.novo(0, 45, 0, 28)

mini.Texto = "-"

mini.TextSize = 40

mini.Posição = UDim2.novo(0, 44, -1, 27)

 

mini2.Nome = "minimize2"

mini2.Parent = main.Frame

mini2.BackgroundColor3 = Cor3.fromRGB(117, 117, 117)

mini2.Font = "SourceSans"

mini2.Tamanho = UDim2.novo(0, 45, 0, 28)

mini2.Texto = "+"

mini2.TextSize = 40

mini2.Posição = UDim2.novo(0, 44, -1, 57)

mini2.Visível = falso

 

velocidades = 1

 

locutor local = jogo:GetService("Jogadores").LocalPlayer

 

local chr = jogo.Jogadores.JogadorLocal.Personagem

hum local = chr e chr:FindFirstChildWhichIsA("Humanoid")

 

agora = falso

 



esperar(1.2)
game.StarterGui:SetCore("EnviarNotificação", {
Título = "Bem-vindo"; -- o título (claro)
Texto = "Script feito por RylorHub"; -- o que o texto diz (é claro)
Ícone = ""; -- a imagem, se você quiser.
Duração = 5; -- quanto tempo a notificação deve durar em segundos
})

 

Frame.Active = true -- main = gui

Frame.Draggable = verdadeiro

 

onof.MouseButton1Down:conectar(função()

 

 se nowe == verdadeiro então

  agora = falso

 

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Flying,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)

  orador.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)

  orador.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Landed,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Physics,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Running,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Sentado,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Natação,true)

  orador.Personagem.Humanoide:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

 outro

  nowe = verdadeiro

 

 

 

  para i = 1, as velocidades fazem

   spawn(função()

 

    local hb = jogo:GetService("RunService").Heartbeat

 

 

    tpwalking = verdadeiro

    local chr = jogo.Jogadores.JogadorLocal.Personagem

    hum local = chr e chr:FindFirstChildWhichIsA("Humanoid")

    enquanto tpwalking e hb:Wait() e chr e hum e hum.Parent fazem

     se hum.MoveDirection.Magnitude > 0 então

      chr:TranslateBy(hum.MoveDirection)

     fim

    fim

 

   fim)

  fim

  jogo.Jogadores.JogadorLocal.Caractere.Animar.Desativado = verdadeiro

  local Char = jogo.Jogadores.JogadorLocal.Personagem

  Hum local = Char:FindFirstChildOfClass("Humanóide") ou Char:FindFirstChildOfClass("AnimationController")

 

  para i,v no próximo, Hum:GetPlayingAnimationTracks() faça

   v:AjustarVelocidade(0)

  fim

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Escalada,falso)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Flying,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)

  orador.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)

  orador.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Landed,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Physics,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Running,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Sentado,falso)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)

  alto-falante.Personagem.Humanoide:SetStateEnabled(Enum.HumanoidStateType.Natação,falso)

  orador.Personagem.Humanoide:ChangeState(Enum.HumanoidStateType.Natação)

 fim

 

 

 

 

 se jogo:GetService("Jogadores").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 então

 

 

 

  plr local = jogo.Jogadores.JogadorLocal

  torso local = plr.Character.Torso

  voo local = verdadeiro

  deb local = verdadeiro

  ctrl local = {f = 0, b = 0, l = 0, r = 0}

  lastctrl local = {f = 0, b = 0, l = 0, r = 0}

  velocidade máxima local = 50

  velocidade local = 0

 

 

  bg local = Instance.new("BodyGyro", torso)

  bg.P = 9e4

  bg.maxTorque = Vetor3.novo(9e9, 9e9, 9e9)

  bg.cframe = torso.CFrame

  local bv = Instância.new("VelocidadeCorporal", torso)

  bv.velocidade = Vetor3.novo(0,0.1,0)

  bv.maxForce = Vetor3.novo(9e9, 9e9, 9e9)

  se nowe == verdadeiro então

   plr.Character.Humanoid.PlatformStand = verdadeiro

  fim

  enquanto nowe == true ou game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do

   jogo:GetService("RunService").RenderStepped:Wait()

 

   se ctrl.l + ​​ctrl.r ~= 0 ou ctrl.f + ctrl.b ~= 0 então

    velocidade = velocidade+.5+(velocidade/velocidade máxima)

    se velocidade > velocidade máxima então

     velocidade = velocidade máxima

    fim

   caso contrário, se não (ctrl.l + ​​ctrl.r ~= 0 ou ctrl.f + ctrl.b ~= 0) e velocidade ~= 0 então

    velocidade = velocidade-1

    se velocidade < 0 então

     velocidade = 0

    fim

   fim

   se (ctrl.l + ​​ctrl.r) ~= 0 ou (ctrl.f + ctrl.b) ~= 0 então

    bv.velocity = ((jogo.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((jogo.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - jogo.Workspace.CurrentCamera.CoordinateFrame.p))*velocidade

    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}

   elseif (ctrl.l + ​​ctrl.r) == 0 e (ctrl.f + ctrl.b) == 0 e velocidade ~= 0 então

    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*velocidade

   outro

    bv.velocidade = Vetor3.novo(0,0,0)

   fim

   -- game.Players.LocalPlayer.Character.Animate.Disabled = verdadeiro

   bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*velocidade/velocidademáxima),0,0)

  fim

  ctrl = {f = 0, b = 0, l = 0, r = 0}

  lastctrl = {f = 0, b = 0, l = 0, r = 0}

  velocidade = 0

  bg:Destruir()

  bv:Destruir()

  plr.Character.Humanoid.PlatformStand = falso

  jogo.Jogadores.JogadorLocal.Caractere.Animar.Desativado = falso

  tpwalking = falso

 

 

 

 

 outro

  plr local = jogo.Jogadores.JogadorLocal

  TorsoSuperior local = plr.Character.TorsoSuperior

  voo local = verdadeiro

  deb local = verdadeiro

  ctrl local = {f = 0, b = 0, l = 0, r = 0}

  lastctrl local = {f = 0, b = 0, l = 0, r = 0}

  velocidade máxima local = 50

  velocidade local = 0

 

 

  bg local = Instance.new("BodyGyro", UpperTorso)

  bg.P = 9e4

  bg.maxTorque = Vetor3.novo(9e9, 9e9, 9e9)

  bg.cframe = TorsoSuperior.CFrame

  bv local = Instância.new("Velocidade do Corpo", TorsoSuperior)

  bv.velocidade = Vetor3.novo(0,0.1,0)

  bv.maxForce = Vetor3.novo(9e9, 9e9, 9e9)

  se nowe == verdadeiro então

   plr.Character.Humanoid.PlatformStand = verdadeiro

  fim

  enquanto nowe == true ou game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do

   espere()

 

   se ctrl.l + ​​ctrl.r ~= 0 ou ctrl.f + ctrl.b ~= 0 então

    velocidade = velocidade+.5+(velocidade/velocidade máxima)

    se velocidade > velocidade máxima então

     velocidade = velocidade máxima

    fim

   caso contrário, se não (ctrl.l + ​​ctrl.r ~= 0 ou ctrl.f + ctrl.b ~= 0) e velocidade ~= 0 então

    velocidade = velocidade-1

    se velocidade < 0 então

     velocidade = 0

    fim

   fim

   se (ctrl.l + ​​ctrl.r) ~= 0 ou (ctrl.f + ctrl.b) ~= 0 então

    bv.velocity = ((jogo.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((jogo.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - jogo.Workspace.CurrentCamera.CoordinateFrame.p))*velocidade

    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}

   elseif (ctrl.l + ​​ctrl.r) == 0 e (ctrl.f + ctrl.b) == 0 e velocidade ~= 0 então

    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*velocidade

   outro

    bv.velocidade = Vetor3.novo(0,0,0)

   fim

 

   bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*velocidade/velocidademáxima),0,0)

  fim

  ctrl = {f = 0, b = 0, l = 0, r = 0}

  lastctrl = {f = 0, b = 0, l = 0, r = 0}

  velocidade = 0

  bg:Destruir()

  bv:Destruir()

  plr.Character.Humanoid.PlatformStand = falso

  jogo.Jogadores.JogadorLocal.Caractere.Animar.Desativado = falso

  tpwalking = falso

 

 

 

 fim

 

 

 

 

 

fim)

 

tis locais

 

cima.BotãoDoMouse1Baixo:conectar(função()

 tis = up.MouseEnter:conectar(função()

  enquanto isso acontece

   espere()

   jogo.Jogadores.JogadorLocal.Personagem.ParteRaizHumanoide.CFrame = jogo.Jogadores.JogadorLocal.Personagem.ParteRaizHumanoide.CFrame * CFrame.novo(0,1,0)

  fim

 fim)

fim)

 

up.MouseLeave:conectar(função()

 se é assim então

  tis:Desconectar()

  tis = nulo

 fim

fim)

 

doenças locais

 

para baixo.BotãoDoMouse1Para baixo:conectar(função()

 dis = para baixo.MouseEnter:conectar(função()

  enquanto isso acontece

   espere()

   jogo.Jogadores.JogadorLocal.Personagem.ParteRaizHumanoide.CFrame = jogo.Jogadores.JogadorLocal.Personagem.ParteRaizHumanoide.CFrame * CFrame.novo(0,-1,0)

  fim

 fim)

fim)

 

para baixo.MouseLeave:conectar(função()

 se isso então

  dis:Desconectar()

  dis = nulo

 fim

fim)

 

 

jogo:GetService("Jogadores").LocalPlayer.CharacterAdded:Connect(função(char)

 espere(0,7)

 jogo.Jogadores.JogadorLocal.Personagem.Humanoide.PlataformaStand = falso

 jogo.Jogadores.JogadorLocal.Caractere.Animar.Desativado = falso

 

fim)

 

 

mais.BotãoDoMouse1ParaBaixo:conectar(função()

 velocidades = velocidades + 1

 velocidade.Texto = velocidades

 se nowe == verdadeiro então

 

 

  tpwalking = falso

  para i = 1, as velocidades fazem

   spawn(função()

 

    local hb = jogo:GetService("RunService").Heartbeat

 

 

    tpwalking = verdadeiro

    local chr = jogo.Jogadores.JogadorLocal.Personagem

    hum local = chr e chr:FindFirstChildWhichIsA("Humanoid")

    enquanto tpwalking e hb:Wait() e chr e hum e hum.Parent fazem

     se hum.MoveDirection.Magnitude > 0 então

      chr:TranslateBy(hum.MoveDirection)

     fim

    fim

 

   fim)

  fim

 fim

fim)

meu.BotãoDoMouse1ParaBaixo:conectar(função()

 se velocidades == 1 então

  speed.Text = '-1 velocidade voa mano'

  esperar(1)

  velocidade.Texto = velocidades

 outro

  velocidades = velocidades - 1

  velocidade.Texto = velocidades

  se nowe == verdadeiro então

   tpwalking = falso

   para i = 1, as velocidades fazem

    spawn(função()

 

     local hb = jogo:GetService("RunService").Heartbeat

 

 

     tpwalking = verdadeiro

     local chr = jogo.Jogadores.JogadorLocal.Personagem

     hum local = chr e chr:FindFirstChildWhichIsA("Humanoid")

     enquanto tpwalking e hb:Wait() e chr e hum e hum.Parent fazem

      se hum.MoveDirection.Magnitude > 0 então

       chr:TranslateBy(hum.MoveDirection)

      fim

     fim

 

    fim)

   fim

  fim

 fim

fim)

 

closebutton.MouseButton1Click:Conectar(função()

 principal:Destruir()

fim)

 

mini.MouseButton1Click:Conectar(função()

 up.Visível = falso

 para baixo.Visível = falso

 onof.Visible = falso

 plus.Visível = falso

 velocidade.Visível = falso

 meu.Visível = falso

 mini.Visível = falso

 mini2.Visible = verdadeiro

 main.Frame.BackgroundTransparency = 1

 closebutton.Posição = UDim2.new(0, 0, -1, 57)

fim)

 

mini2.MouseButton1Click:Conectar(função()

 up.Visible = verdadeiro

 down.Visible = verdadeiro

 onof.Visible = verdadeiro

 plus.Visível = verdadeiro

 velocidade.Visível = verdadeiro

 mine.Visível = verdadeiro

 mini.Visível = verdadeiro

 mini2.Visível = falso

 main.Frame.BackgroundTransparency = 0

 closebutton.Posição = UDim2.new(0, 0, -1, 27)

fim)