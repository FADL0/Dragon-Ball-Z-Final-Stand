local Player = game:GetService("Players").LocalPlayer
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Character = Player.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local Root = Character:FindFirstChild("HumanoidRootPart")
local Prefix = "@"

Player.Chatted:Connect(function(C)
	if C:match(Prefix .. "iy") or C:match(Prefix .. "infyield") or C:match(Prefix .. "infiniteyield") then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

	elseif C:match(Prefix .. "rj") or C:match(Prefix .. "rejoin") then
		TeleportService:Teleport(game.PlaceId)

	elseif C:match(Prefix .. "god") then
		local Stats = Character:FindFirstChild("Stats")
		if Stats:FindFirstChild("Phys-Resist") then
			Stats:WaitForChild("Phys-Resist"):Destroy()
			Stats:WaitForChild("Ki-Resist"):Destroy()
		else
			Humanoid.Health = 0 --only way to undo godmode
		end

	elseif C:match(Prefix .. "reset") or C:match(Prefix .. "hardreset") or C:match(Prefix .. "hr") then
		Humanoid.Health = 0

	elseif C:match(Prefix .. "telespeed") or C:match(Prefix .. "speed") then
		StarterGui:SetCore("SendNotification", {
			Title = "Commands",
			Text = "Press V to toggle telespeed"
		})
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Doxifieq/Dragon-Ball-Z-Final-Stand/main/TeleSpeed.lua'))()

	elseif C:match(Prefix .. "chatlogs") or C:match(Prefix .. "cl") then
		if Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible == false then
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
		else
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
		end
	end
end)
