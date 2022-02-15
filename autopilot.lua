-- use in this game: https://www.roblox.com/games/2210085102/Naval-Warfare

local Players = game:GetService("Players")
local Run = game:GetService("RunService")

local player = Players.LocalPlayer

local mouse = player:GetMouse()

local gui = nil
local map = nil
local autopilot = nil

local america = "rbxassetid://2238258440"
local japan = "rbxassetid://154988904"

do -- construct gui

	-- Gui to Lua
	-- Version: 3.2

	-- Instances:F

	local NavalWarfare = Instance.new("ScreenGui")
	local Map = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local A = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local Home = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Enemy = Instance.new("Frame")
	local ImageLabel_2 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local B = Instance.new("ImageLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local C = Instance.new("ImageLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local Coordinates = Instance.new("Frame")
	local TextLabel_4 = Instance.new("TextLabel")
	local Ship = Instance.new("Frame")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local Autopilot = Instance.new("TextButton")

	gui = NavalWarfare
	map = Frame
	autopilot = Autopilot

	--Properties:

	NavalWarfare.Name = "Naval Warfare+"
	NavalWarfare.Parent = game:GetService("CoreGui")
	NavalWarfare.ResetOnSpawn = false
	NavalWarfare.IgnoreGuiInset = true
	NavalWarfare.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Map.Name = "Map"
	Map.Parent = NavalWarfare
	Map.AnchorPoint = Vector2.new(0.5, 0.5)
	Map.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Map.BackgroundTransparency = 1.000
	Map.Position = UDim2.new(0.5, 0, 0.5, 0)
	Map.Size = UDim2.new(0.548719049, 0, 0.879618585, 0)
	Map.Visible = false

	Frame.Parent = Map
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(80, 161, 241)
	Frame.BorderColor3 = Color3.fromRGB(38, 38, 38)
	Frame.BorderSizePixel = 2
	Frame.Position = UDim2.new(0.49999997, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)

	UIAspectRatioConstraint.Parent = Frame
	UIAspectRatioConstraint.AspectRatio = 0.625

	A.Name = "A"
	A.Parent = Frame
	A.AnchorPoint = Vector2.new(0.5, 0.5)
	A.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	A.BackgroundTransparency = 1.000
	A.Position = UDim2.new(0.5, 0, 0.25, 0)
	A.Size = UDim2.new(0.0289999992, 0, 0.0183105469, 0)
	A.Image = "rbxassetid://5716001597"
	A.ImageColor3 = Color3.fromRGB(85, 170, 0)

	TextLabel.Parent = A
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, -1, 0)
	TextLabel.Size = UDim2.new(4.5, 0, 2.25, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "A"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	Home.Name = "Home"
	Home.Parent = Frame
	Home.AnchorPoint = Vector2.new(0.5, 1)
	Home.BackgroundColor3 = Color3.fromRGB(147, 147, 147)
	Home.Position = UDim2.new(0.5, 0, 1, 0)
	Home.Size = UDim2.new(0.0390000008, 0, 0.00610351562, 0)

	ImageLabel.Parent = Home
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BorderColor3 = Color3.fromRGB(43, 43, 43)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, -4, 0)
	ImageLabel.Size = UDim2.new(0, 30, 0, 24)
	ImageLabel.Image = "rbxassetid://2238258440"

	UIAspectRatioConstraint_2.Parent = ImageLabel
	UIAspectRatioConstraint_2.AspectRatio = 1.500

	Enemy.Name = "Enemy"
	Enemy.Parent = Frame
	Enemy.AnchorPoint = Vector2.new(0.5, 0)
	Enemy.BackgroundColor3 = Color3.fromRGB(147, 147, 147)
	Enemy.Position = UDim2.new(0.5, 0, 0, 0)
	Enemy.Size = UDim2.new(0.0390000008, 0, 0.00610351562, 0)

	ImageLabel_2.Parent = Enemy
	ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.BorderColor3 = Color3.fromRGB(43, 43, 43)
	ImageLabel_2.BorderSizePixel = 0
	ImageLabel_2.Position = UDim2.new(0.5, 0, 5, 0)
	ImageLabel_2.Size = UDim2.new(0, 30, 0, 24)
	ImageLabel_2.Image = "rbxassetid://154988904"

	UIAspectRatioConstraint_3.Parent = ImageLabel_2
	UIAspectRatioConstraint_3.AspectRatio = 1.500

	B.Name = "B"
	B.Parent = Frame
	B.AnchorPoint = Vector2.new(0.5, 0.5)
	B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	B.BackgroundTransparency = 1.000
	B.Position = UDim2.new(0.5, 0, 0.5, 0)
	B.Size = UDim2.new(0.0289999992, 0, 0.0183105469, 0)
	B.Image = "rbxassetid://5716001597"
	B.ImageColor3 = Color3.fromRGB(85, 170, 0)

	TextLabel_2.Parent = B
	TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.5, 0, -1, 0)
	TextLabel_2.Size = UDim2.new(4.5, 0, 2.25, 0)
	TextLabel_2.Font = Enum.Font.GothamBold
	TextLabel_2.Text = "B"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	C.Name = "C"
	C.Parent = Frame
	C.AnchorPoint = Vector2.new(0.5, 0.5)
	C.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	C.BackgroundTransparency = 1.000
	C.Position = UDim2.new(0.5, 0, 0.75, 0)
	C.Size = UDim2.new(0.0289999992, 0, 0.0183105469, 0)
	C.Image = "rbxassetid://5716001597"
	C.ImageColor3 = Color3.fromRGB(85, 170, 0)

	TextLabel_3.Parent = C
	TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.Position = UDim2.new(0.5, 0, -1, 0)
	TextLabel_3.Size = UDim2.new(4.5, 0, 2.25, 0)
	TextLabel_3.Font = Enum.Font.GothamBold
	TextLabel_3.Text = "C"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true

	Coordinates.Name = "Coordinates"
	Coordinates.Parent = Frame
	Coordinates.AnchorPoint = Vector2.new(0.5, 0)
	Coordinates.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Coordinates.Position = UDim2.new(0.5, 0, 1, 0)
	Coordinates.Size = UDim2.new(1, 2, 0.0299999993, 0)

	TextLabel_4.Parent = Coordinates
	TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel_4.Size = UDim2.new(0.975000024, 0, 0.800000012, 0)
	TextLabel_4.Font = Enum.Font.Gotham
	TextLabel_4.Text = "(x: 23, y: 40)"
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14.000
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

	Ship.Name = "Ship"
	Ship.Parent = Frame
	Ship.AnchorPoint = Vector2.new(0.5, 1)
	Ship.BackgroundColor3 = Color3.fromRGB(193, 193, 193)
	Ship.BorderColor3 = Color3.fromRGB(75, 75, 75)
	Ship.Position = UDim2.new(0.708636999, 0, 0.908401012, 0)
	Ship.Size = UDim2.new(0.00673536398, 0, 0.0253060665, 0)

	UIAspectRatioConstraint_4.Parent = Ship
	UIAspectRatioConstraint_4.AspectRatio = 0.273

	Autopilot.Name = "Autopilot"
	Autopilot.Parent = NavalWarfare
	Autopilot.Active = true
	Autopilot.AnchorPoint = Vector2.new(1, 0.5)
	Autopilot.BackgroundColor3 = Color3.fromRGB(16, 128, 1)
	Autopilot.BackgroundTransparency = 0.650
	Autopilot.BorderSizePixel = 0
	Autopilot.Position = UDim2.new(0.989000022, 0, 0.5, 0)
	Autopilot.Selectable = false
	Autopilot.Size = UDim2.new(0.0979999974, 0, 0.0386666656, 0)
	Autopilot.Font = Enum.Font.SourceSansSemibold
	Autopilot.Text = "Autopilot"
	Autopilot.TextColor3 = Color3.fromRGB(255, 255, 255)
	Autopilot.TextScaled = true
	Autopilot.TextWrapped = true
end

local goTo = nil

map.Parent.Visible = false
autopilot.Visible = true
autopilot.BackgroundColor3 = Color3.fromRGB(255,0,0)

local last = nil

Run.RenderStepped:Connect(function()
	local riding = nil

	for _,v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Owner") and v:FindFirstChild("Occupant") then
			if v:FindFirstChild("Occupant").Value == player.Name then
				riding = v
				break
			end
		end
	end

	autopilot.Visible = riding

	if not riding then
		map.Parent.Visible = false
	end

	if riding and goTo then

		if (riding.PrimaryPart.Position-Vector3.new(goTo.X,riding.PrimaryPart.Position.Y,goTo.Y)).Magnitude < 8 then
			goTo = nil
		end

		last = true

		keypress(0x57)

		local correct = CFrame.lookAt(riding.PrimaryPart.Position,Vector3.new(goTo.X,riding.PrimaryPart.Position.Y,goTo.Y)) --y component does not matter here

		local _,correctDir,_ = correct:ToOrientation()-- correct.LookVector.Unit.X
		local _,currentDir,_ = riding.PrimaryPart.CFrame:ToOrientation()--riding.PrimaryPart.CFrame.LookVector.Unit.X

		local dir = 0

		if currentDir-correctDir ~= 0 then
			local otherAngle = currentDir-correctDir+math.pi

			while otherAngle>math.pi*2 or otherAngle<0 do
				otherAngle = otherAngle+math.pi*2*-math.sign(otherAngle)
			end

			if otherAngle > math.pi then
				otherAngle = otherAngle-math.pi*2
			end

			dir = otherAngle
		end

		if math.abs(math.abs(dir)-math.pi) < 0.0075 then
			dir = 0
			keyrelease(0x44)
			keyrelease(0x41)
			riding:PivotTo(correct)
			keypress(0x57)
		end

		if dir>0 then
			keyrelease(0x44)
			keypress(0x41)
		elseif dir<0 then
			keyrelease(0x41)
			keypress(0x44)
		else
			-- oriented, start moving forward
			keypress(0x57)
		end
	else
		goTo = nil
		if last then
			last = false
			keyrelease(0x44)
			keyrelease(0x41)
			keyrelease(0x57)
			keypress(0x53)
			Run.RenderStepped:Wait()
			keyrelease(0x53)
		end
	end

	if riding then
		local root = riding.PrimaryPart
		local pos = UDim2.fromScale((root.Position.X+(5*2048/2))/(5*2048), (root.Position.Z+(8*2048/2))/(8*2048))

		if player.Team.Name == "Japan" then
			pos = UDim2.fromScale(1-pos.X.Scale,1-pos.Y.Scale)
		end

		map.Ship.Rotation = -root.Orientation.Y
		map.Ship.Position = pos
	end
end)

autopilot.Activated:Connect(function()
	local team = player.Team.Name
	if goTo then
		goTo = nil
		autopilot.BackgroundColor3 = Color3.fromRGB(255,0,0)
	else
		map.Home.ImageLabel.Image = team == "USA" and america or japan
		map.Enemy.ImageLabel.Image = team == "USA" and japan or america

		for _,v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") and v.Name == "Island" and v:FindFirstChild("IslandCode") then
				local root = v.PrimaryPart

				local pos = UDim2.fromScale((root.Position.X+(5*2048/2))/(5*2048), (root.Position.Z+(8*2048/2))/(8*2048))

				if team == "Japan" then
					pos = UDim2.fromScale(1-pos.X.Scale,1-pos.Y.Scale)
				end

				map:FindFirstChild(v:FindFirstChild("IslandCode").Value).Position = pos
			end
		end

		autopilot.Parent = nil
		map.Parent.Visible = true

		local event1 = nil
		local event2 = nil

		event2 = Run.RenderStepped:Connect(function()
			local pos = Vector2.new(mouse.X,mouse.Y)

			local topL = map.AbsolutePosition
			local bottomR = map.AbsolutePosition+map.AbsoluteSize

			local oP = pos-topL

			local percent = oP/(bottomR-topL)

			local realPos = Vector2.new(((5*2048)*math.clamp(percent.X,0,1))-(5*2048/2),((8*2048)*math.clamp(percent.Y,0,1))-(8*2048/2))

			if team == "Japan" then
				realPos = -realPos
			end

			map.Coordinates.TextLabel.Text = "(x: "..math.round(realPos.X)..", y: "..math.round(realPos.Y)..")"
		end)

		event1 = mouse.Button1Down:Connect(function()
			local pos = Vector2.new(mouse.X,mouse.Y)

			local topL = map.AbsolutePosition
			local bottomR = map.AbsolutePosition+map.AbsoluteSize

			if pos.X<bottomR.X and pos.X>topL.X and pos.Y<bottomR.Y and pos.Y>topL.Y then
				event1:Disconnect()
				event2:Disconnect()

				map.Parent.Visible = false
				autopilot.BackgroundColor3 = Color3.fromRGB(16,128,1)
				autopilot.Parent = gui

				local oP = pos-topL

				local percent = oP/(bottomR-topL)

				local realPos = -Vector2.new(((5*2048)*math.clamp(team == "USA" and 1-percent.X or percent.X,0,1))-(5*2048/2),((8*2048)*math.clamp(team == "USA" and 1-percent.Y or percent.Y,0,1))-(8*2048/2))

				goTo = realPos
			end
		end)
	end
end)

print("loaded successfully")
