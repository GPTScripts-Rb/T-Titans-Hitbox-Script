
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local lp = Players.LocalPlayer

RunService.RenderStepped:Connect(function()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= lp and plr.Character then
            local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if hrp and hrp:IsA("BasePart") then
                hrp.Size = Vector3.new(50,50,50)
                hrp.Transparency = 0.5
                hrp.Material = Enum.Material.ForceField
                hrp.BrickColor = BrickColor.new("Bright red")
                hrp.CanCollide = false
            end
        end
    end
end)
