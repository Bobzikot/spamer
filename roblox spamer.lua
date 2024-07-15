local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")
local spamToggle = false

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.3, 0, 0.35, 0)
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Active = true
Frame.Draggable = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0.05, 0, 0.15, 0)
TextBox.Size = UDim2.new(0.9, 0, 0.4, 0)
TextBox.Font = Enum.Font.GothamBold
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Введи сообщение"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 18

Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button.Position = UDim2.new(0.05, 0, 0.65, 0)
Button.Size = UDim2.new(0.9, 0, 0.25, 0)
Button.Font = Enum.Font.GothamBold
Button.Text = "Кликни что бы начать спамить"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 20

local function spamChat()
    while spamToggle do
        wait(0.1)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TextBox.Text, "All")
    end
end

Button.MouseButton1Down:Connect(function()
    spamToggle = not spamToggle
    if spamToggle then
        spamChat()
    end
end)
