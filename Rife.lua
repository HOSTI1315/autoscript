
wait(6)
local riftsFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Rifts")
local player = game.Players.LocalPlayer

if riftsFolder and player then
    local character = player.Character or player.CharacterAdded:Wait()

    while true do
        local children = riftsFolder:GetChildren() -- Get all children of Rifts

        for _, child in ipairs(children) do
            local prompt = child:FindFirstChild("ProximityPrompt") -- Look for ProximityPrompt inside the child

            if prompt and character and character:FindFirstChild("HumanoidRootPart") then
                -- Teleport player to the part containing the ProximityPrompt
                character.HumanoidRootPart.CFrame = child.CFrame + Vector3.new(0, 3, 0) -- Slightly above to prevent getting stuck

                task.wait(1) -- Wait a moment after teleporting

                -- Trigger the ProximityPrompt
                prompt:InputHoldBegin()
                task.wait(0.5) -- Simulate hold time
                prompt:InputHoldEnd()
            end
        end

        task.wait(1) -- Adjust delay as needed
    end
else
    warn("Rifts folder or player not found!")
end
