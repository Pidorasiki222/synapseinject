local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local pGui = player:WaitForChild("PlayerGui")


local function CreateSynapseNotify(title, text)
    local sg = Instance.new("ScreenGui")
    sg.Name = "SynapseX_Notify"
    sg.ResetOnSpawn = false
    sg.Parent = pGui

    -- Основной фрейм
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 260, 0, 75)
    frame.Position = UDim2.new(1, 10, 0.8, 0) -- Начало за краем экрана
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Темный фон Synapse
    frame.BorderSizePixel = 0
    frame.Parent = sg

    -- Оранжевая полоска сверху (акцент)
    local topBar = Instance.new("Frame")
    topBar.Size = UDim2.new(1, 0, 0, 3)
    topBar.BackgroundColor3 = Color3.fromRGB(255, 165, 0) -- Оранжевый цвет
    topBar.BorderSizePixel = 0
    topBar.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = frame

    -- Заголовок с оранжевым "X"
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -10, 0, 25)
    titleLabel.Position = UDim2.new(0, 10, 0, 5)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 16
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    -- Используем RichText, чтобы сделать X оранжевым
    titleLabel.RichText = true
    titleLabel.Text = "Synapse <font color='rgb(255, 165, 0)'>X</font>" 
    titleLabel.Parent = frame

    -- Основной текст
    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(1, -20, 0, 35)
    descLabel.Position = UDim2.new(0, 10, 0, 30)
    descLabel.BackgroundTransparency = 1
    descLabel.Font = Enum.Font.SourceSans
    descLabel.TextSize = 14
    descLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.TextWrapped = true
    descLabel.Text = text
    descLabel.Parent = frame

    -- Анимация появления
    frame:TweenPosition(UDim2.new(1, -270, 0.8, 0), "Out", "Quart", 0.4, true)

    -- Ждем 3 секунды, как ты просил
    task.wait(3)

    -- Анимация исчезновения
    frame:TweenPosition(UDim2.new(1, 10, 0.8, 0), "In", "Quart", 0.4, true)
    
    task.wait(0.4)
    sg:Destroy()
end

CreateSynapseNotify("Synapse X", "Succed Executed! ")
