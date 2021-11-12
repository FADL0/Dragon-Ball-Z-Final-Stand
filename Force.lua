local Player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local Character = Player.Character
local Root = Character:FindFirstChild("HumanoidRootPart")

_G.TeleSpeed = false

UserInputService.InputBegan:Connect(function(Input, gameProcessedEvent)
	if gameProcessedEvent then return end
	if Input.KeyCode == Enum.KeyCode.V then
		_G.TeleSpeed = not _G.TeleSpeed
		repeat wait()
			Root.CFrame = Root.CFrame * CFrame.new(Vector3.new(0, 0, -20))
		until not _G.TeleSpeed
	end
end)
