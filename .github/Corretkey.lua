-- Variáveis de configuração
local notificationTime = 5 -- Tempo em segundos que a notificação será exibida
local scriptURL = 'https://raw.githubusercontent.com/Daviboycool/Scripthub/main/.github/Scriptcoolbyfadavid/Keynolol.lua'

-- Criar a GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.1, 0)
frame.Position = UDim2.new(0.35, 0, 0.45, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 0
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
textLabel.TextStrokeTransparency = 0.5
textLabel.TextSize = 24
textLabel.Text = "executando script"
textLabel.Parent = frame

-- Exibir a notificação
frame.Visible = true

-- Esperar o tempo da notificação
wait(notificationTime)

-- Ocultar a notificação
frame.Visible = false

-- Executar o script externo após o tempo de espera
loadstring(game:HttpGet(scriptURL))()
