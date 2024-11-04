-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Base = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local Error = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local sound = Instance.new("Sound").SoundId == 2390695935

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Base.Name = "Base"
Base.Parent = ScreenGui
Base.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
Base.BorderColor3 = Color3.fromRGB(0, 0, 0)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0.713835418, -555, 0.192700729, 83)
Base.Size = UDim2.new(0, 373, 0, 192)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(225, 225, 225)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(26, 26, 26))}
UIGradient.Parent = Base

UICorner.Parent = Base

TextLabel.Parent = Base
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.230563, 0, 0.103351958, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Universal Gui"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 1.030
TextLabel.TextWrapped = true

TextButton.Parent = Base
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.214477211, 0, 0.402234644, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open Gui"
TextButton.TextColor3 = Color3.fromRGB(175, 175, 175)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(108, 10, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 12, 16))}
UIGradient_2.Parent = TextButton

TextLabel_2.Parent = Base
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.214477211, 0, 0.103351958, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "Universal Gui"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeTransparency = 1.030
TextLabel_2.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(108, 10, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 12, 16))}
UIGradient_3.Parent = TextLabel_2

Error.Name = "Error"
Error.Parent = ScreenGui
Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Error.BorderColor3 = Color3.fromRGB(0, 0, 0)
Error.BorderSizePixel = 0
Error.Position = UDim2.new(0, 0, 0.472992688, 0)
Error.Size = UDim2.new(0, 1669, 0, 100)
Error.Visible = false
Error.Style = Enum.FrameStyle.RobloxRound

UICorner_3.Parent = Error

TextLabel_3.Parent = Error
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0200789217, 0, 0.163580015, 0)
TextLabel_3.Size = UDim2.new(0, 1574, 0, 67)
TextLabel_3.Font = Enum.Font.Ubuntu
TextLabel_3.Text = "Oops!, It looks like the ui had a error trying to load. please contact Meco for help"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 46.000
TextLabel_3.TextTransparency = 0.700
TextLabel_3.TextWrapped = true

-- Scripts:

local function MCLRIC_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local player = game.Players.LocalPlayer
	local gui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
	local button = script.Parent
	local TweenService = game:GetService("TweenService")
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://2390695935"
	sound.Parent = gui  -- Parent sound to the GUI or workspace

	local success, errorMessage = pcall(function()
		local errorGui = gui:FindFirstChild("Error")
		if not errorGui then
			error("Error GUI not found in ScreenGui!")
		end

		local function slideInErrorGui()
			errorGui.Position = UDim2.new(0.5, 0, 1, 0)
			errorGui.AnchorPoint = Vector2.new(0.5, 0.5)
			errorGui.Visible = true
			sound:Play()
			local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local tween = TweenService:Create(errorGui, tweenInfo, {Position = UDim2.new(0.5, 0, 0.5, 0)})
			tween:Play()
			script.Disabled = true
		end

		button.MouseButton1Click:Connect(slideInErrorGui)
	end)

	if not success then
		warn("An error occurred: " .. errorMessage)
	end
end
coroutine.wrap(MCLRIC_fake_script)()
