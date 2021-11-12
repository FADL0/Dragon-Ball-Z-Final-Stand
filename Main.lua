local Player = game:GetService("Players").LocalPlayer
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Character = Player.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local Root = Character:FindFirstChild("HumanoidRootPart")
local Prefix = "@"

Player.Chatted:Connect(function(Chat)
	if Chat == Prefix .. "iy" or Prefix .. "infyield" or Prefix .. "infiniteyield" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()


	elseif Chat == Prefix .. "rj" or Prefix .. "rejoin" or then
		TeleportService:Teleport(game.PlaceId)


	elseif Chat == Prefix .. "gm" or Prefix .. "god" or Prefix .. "godmode" then
		local Stats = Character:FindFirstChild("Stats")
		if Stats:FindFirstChild("Phys-Resist") then
			Stats:WaitForChild("Phys-Resist"):Destroy()
			Stats:WaitForChild("Ki-Resist"):Destroy()
		else
			Humanoid.Health = 0 --only way to undo godmode
		end


	elseif Chat == Prefix .. "hr" or Prefix .. "reset" or Prefix .. "hardreset" then
		Humanoid.Health = 0


	elseif Chat == Prefix .. "ts" or Prefix .. "speed" or "telespeed" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Doxifieq/Dragon-Ball-Z-Final-Stand/main/TeleSpeed.lua'))()
		StarterGui:SetCore("SendNotification", {
			Title = "Commands",
			Text = "Press V to toggle telespeed"
		})


	elseif Chat == Prefix .. "cl" or Prefix .. "chat" or "chatlogs" then
		if Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible == false then
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
		else
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
		end


	--elseif
	end
end)
