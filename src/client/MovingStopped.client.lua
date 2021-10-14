local player = game.Players.LocalPlayer
local Repstore = game:GetService("ReplicatedStorage")
local Size1 = Vector3.new(1.663, 8.242, 0.293)
local Position1 = Vector3.new(0, 0, -0.998)
local BlockPart = Instance.new("Part", Repstore)
BlockPart.Size = Vector3.new(0,0,0)
BlockPart.Anchored = true
local UIS =game:GetService("UserInputService")
local Values = player:WaitForChild("Values")
local SS = game.SoundService
local TS = game:GetService("TweenService")
local Tween = {}
Tween.Size = Size1
local Settings = TweenInfo.new(2) 

--[[UIS.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.S or input.KeyCode == Enum.KeyCode.D then
        
    end
end)]]--

wait(5)
player.Character.Humanoid.Running:Connect(function(speed)
    if speed == 0 then
        if Values.CurMode.Value == 2 then
            print("Died")
            player.Character.Humanoid.Health = 1
            player.Character:MoveTo(game.Workspace.SpawnLocation.Position)
            local DeathScreen = Instance.new("ScreenGui", player.PlayerGui)
            DeathScreen.Name = "DeathGui"
            DeathScreen.IgnoreGuiInset = true
            local DFrame = Instance.new("Frame", DeathScreen)
            DFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            DFrame.Size = UDim2.new(1,0,1,0)
            if Values.CurMaze.Value == 1 then
                SS.Maze0:Stop()
                SS.DeathStart:Play()
            elseif Values.CurMaze.Value == 2 then
                SS.Maze1:Stop()
                SS.DeathStart:Play()
            end
            SS.DeathStart:Play()
        elseif Values.CurMode.Value == 1 then
            local Copy = BlockPart:Clone()
            Copy.Parent = game.Workspace
            Copy.Position = player.Character.LowerTorso.Position +Position1
            local T = TS:Create(Copy, Settings, Tween)
            T:Play()
        end

    end
end)