local Player = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local Character = Player.Character
local Root = Character:FindFirstChild("HumanoidRootPart")

UserInputService.InputBegan:Connect(function(Input, gameProcessedEvent)
	if gameProcessedEvent then return end
	if Input.KeyCode == Enum.KeyCode.K then
		if Character:FindFirstChild("Blast") then
			Character:FindFirstChild("Blast").Weld:Destroy()
			task.wait(1)
			Character:FindFirstChild("Blast").Anchored = false
		end
	end
end)
