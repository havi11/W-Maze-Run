local player = game.Players.LocalPlayer
local plrGui = player:WaitForChild("PlayerGui")
local Values = player:WaitForChild("Values")
local SoundService = game.SoundService

game.Workspace.Finishing_Positions.FinishPart0.Touched:Connect(function(hit)
    if hit.Parent.Name == player.Name then
        SoundService.Maze0:Stop()
        SoundService.Complete:Play()
        local WonGui = Instance.new("ScreenGui", plrGui)
        local Frame = Instance.new("Frame", WonGui)
        Frame.Size = UDim2.new(1,0,1,0)
        local WonTxt = Instance.new("TextLabel", Frame)
        WonTxt.Size = UDim2.new(1, 0,0.289, 0)
        WonTxt.AnchorPoint = Vector2.new(0.5,0.5)
        WonTxt.Position = UDim2.new(0.5,0,0.5,0)
        WonTxt.TextScaled = true
        WonTxt.Text = player.DisplayName.." (@"..player.Name..") has completed Maze "..Values.CurMaze.Value
    end

end)

game.Workspace.Finishing_Positions.FinishPart1.Touched:Connect(function(hit)
    if hit.Parent.Name == player.Name then
        SoundService.Maze1:Stop()
        SoundService.Complete:Play()
        local WonGui = Instance.new("ScreenGui", plrGui)
        local Frame = Instance.new("Frame", WonGui)
        Frame.Size = UDim2.new(1,0,1,0)
        local WonTxt = Instance.new("TextLabel", Frame)
        WonTxt.Size = UDim2.new(1, 0,0.289, 0)
        WonTxt.AnchorPoint = Vector2.new(0.5,0.5)
        WonTxt.Position = UDim2.new(0.5,0,0.5,0)
        WonTxt.TextScaled = true
        WonTxt.Text = player.DisplayName.." (@"..player.Name..") has completed Maze "..Values.CurMaze.Value
    end

end)
