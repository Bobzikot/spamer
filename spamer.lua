local ScreenGui = Instance.new("ScreenGui")
local CustomFrame = Instance.new("Frame")
local CustomFrame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CustomTextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local spamToggle = false


ScreenGui.Parent = game.CoreGui

CustomFrame.Parent = ScreenGui
CustomFrame.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CustomFrame.Position = UDim2.new(0.293939382, 0, 0.35603714, 0)
CustomFrame.Size = UDim2.new(0, 300, 0, 200)
CustomFrame.Active = true
CustomFrame.Draggable = true

CloseButton.Parent = CustomFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0.925, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14.000

CustomFrame_2.Parent = CustomFrame
CustomFrame_2.BackgroundColor3 = Color3.fromRGB(135, 0, 211)
CustomFrame_2.Position = UDim2.new(0.0358744413, 0, 0.0496453904, 0)
CustomFrame_2.Size = UDim2.new(0, 270, 0, 160)

UICorner.Parent = CustomFrame_2

CustomTextBox.Parent = CustomFrame_2
CustomTextBox.BackgroundColor3 = Color3.fromRGB(40, 20, 10)
CustomTextBox.Position = UDim2.new(0.0538115874, 0, 0.112630695, 0)
CustomTextBox.Size = UDim2.new(0, 240, 0, 80)
CustomTextBox.Font = Enum.Font.GothamBold
CustomTextBox.PlaceholderColor3 = Color3.fromRGB(176, 172, 173)
CustomTextBox.PlaceholderText = "напиши какой-то символ, чтобы спамить"
CustomTextBox.Text = ""
CustomTextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
CustomTextBox.TextSize = 18.000
CustomTextBox.TextWrapped = true

UICorner_2.Parent = CustomTextBox

TextButton.Parent = CustomFrame_2
TextButton.BackgroundColor3 = Color3.fromRGB(90, 0, 213)
TextButton.Position = UDim2.new(0.0538115874, 0, 0.579365075, 0)
TextButton.Size = UDim2.new(0, 240, 0, 60)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "жми что бы начался пиздец"
TextButton.TextColor3 = Color3.fromRGB(189, 189, 189)
TextButton.TextSize = 20.000
local function spamChat()
    while spamToggle do
        wait(0.1)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((CustomTextBox.Text), "All")
    end
end
TextButton.MouseButton1Down:Connect(function()
    spamToggle = not spamToggle
    if spamToggle then
        spamChat()
    end
end)

UICorner_3.Parent = TextButton

UICorner_4.Parent = CustomFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
