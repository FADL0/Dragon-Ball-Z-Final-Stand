local Player = game:GetService("Players").LocalPlayer
local TeleportService = game:GetService("TeleportService")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Character = Player.Character
local Humanoid = Character:FindFirstChild("Humanoid")
local Root = Character:FindFirstChild("HumanoidRootPart")
local Prefix = ">"

_G.NoSlow = false

Player.Chatted:Connect(function(C)
	if C:match(Prefix .. "iy") or C:match(Prefix .. "infyield") or C:match(Prefix .. "infiniteyield") then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()


	elseif C:match(Prefix .. "rj") or C:match(Prefix .. "rejoin") then
		TeleportService:Teleport(game.PlaceId)


	elseif C:match(Prefix .. "god") or C:match(Prefix .. "gm") then
		local Stats = Character:FindFirstChild("Stats")
		if Stats:FindFirstChild("Phys-Resist") then
			Stats:WaitForChild("Phys-Resist"):Destroy()
			Stats:WaitForChild("Ki-Resist"):Destroy()
		else
			Humanoid.Health = 0 --only way to undo godmode
		end


	elseif C:match(Prefix .. "reset") or C:match(Prefix .. "hardreset") or C:match(Prefix .. "hr") then
		Humanoid.Health = 0


	elseif C:match(Prefix .. "telespeed") or C:match(Prefix .. "speed") or C:match(Prefix .. "ts") then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Doxifieq/Dragon-Ball-Z-Final-Stand/main/TeleSpeed.lua'))()
		StarterGui:SetCore("SendNotification", {
			Title = "Commands",
			Text = "Press V to toggle telespeed"
		})


	elseif C:match(Prefix .. "chatlogs") or C:match(Prefix .. "cl") then
		if Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible == false then
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
		else
			Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
		end


	elseif C:match(Prefix .. "noslow") or C:match(Prefix .. "ns") then
		_G.NoSlow = not _G.NoSlow
		local NSTable = {
			"Using",
			"Attacking",
			"Action",
			"i",
			"evasive"
		}

		Character.ChildAdded:Connect(function(Object)
			if _G.NoSlow == true then
				if table.find(NSTable, Object.Name) then
					task.wait()
					Object:Destroy()
				end
			end
		end)


	elseif C:match(Prefix .. "force") then
		_G.Force = not _G.Force
		StarterGui:SetCore("SendNotification", {
			Title = "Commands",
			Text = "Press K to perform force"
		})
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Doxifieq/Dragon-Ball-Z-Final-Stand/main/Force.lua'))()


	elseif C:match(Prefix .. "shield") or C:match(Prefix .. "ks") then
		if Character:FindFirstChild("Blast") then
			Character:FindFirstChild("Blast").Mesh:Destroy()
			StarterGui:SetCore("SendNotification", {
				Title = "Commands",
				Text = "Use another beam to reset animation"
			})
		else
			StarterGui:SetCore("SendNotification", {
				Title = "Commands",
				Text = "Execute command while holding 'Giant Storm'"
			})
		end
	end
end)
