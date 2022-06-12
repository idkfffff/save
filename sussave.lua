	saveinstance(game)
	
	local SaveUi = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	SaveUi.Name = "SaveUi"
	SaveUi.Parent = game.CoreGui
	SaveUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	SaveUi.ResetOnSpawn = false

	TextLabel.Parent = SaveUi
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.247264773, 0, 0.0454545468, 0)
	TextLabel.Size = UDim2.new(0.505470455, 0, 0.0530302972, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Finding Object"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 0.000
	TextLabel.TextWrapped = true

	-- Scripts:

	local function XVHF_fake_script() -- TextLabel.LocalScript 
		local script = Instance.new('LocalScript', TextLabel)

		local LoadIn = 1
		local Max = math.random(373,855)
		while wait(math.random(0.5,2)) do
			if LoadIn == Max then
				script.Parent.Text = "Save File..."
				wait(1)
				script.Parent.Visible = false
			else
				LoadIn = LoadIn + 1
				script.Parent.Text = "Decompiling scripts...".."("..LoadIn .."/"..Max ..")"
			end
		end
	end
	coroutine.wrap(XVHF_fake_script)()
end
