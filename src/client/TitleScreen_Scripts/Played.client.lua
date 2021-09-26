local player = game.Players.LocalPlayer
local plrGui = player:WaitForChild("PlayerGui")
local TitleGui = plrGui:WaitForChild("TitleGui")
local ChooserGui = plrGui:WaitForChild("Menu")
local Pos = UDim2.new(-0, 0,0.973, 0)
local Values = player:WaitForChild("Values")
local ServerStorage = game:GetService("ServerStorage")
local Maps = game.Workspace.Maps
local Mazes = game.Workspace.Mazes
local TweenService = game:GetService("TweenService")
local TweenInf = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local TweenProperties0 = {}
TweenProperties0.CFrame = game.Workspace.Starting_Positions.StartPart0.CFrame
local TweenProperties1 = {}
TweenProperties1.CFrame = game.Workspace.Starting_Positions.StartPart1.CFrame
local Tween0 = TweenService:Create(game.Workspace.CurrentCamera, TweenInf, TweenProperties0)
local Tween1 = TweenService:Create(game.Workspace.CurrentCamera, TweenInf, TweenProperties1)

TitleGui.Frame.PlayBTN.MouseButton1Click:Connect(function()
    TitleGui.Frame.PlayBTN:TweenPosition(UDim2.new(0.5, 0,2, 0))
    ChooserGui.LevelChooser.Position = Pos
    ChooserGui.LevelChooser.Visible = true
    ChooserGui.LevelChooser:TweenPosition(UDim2.new(0,0,0,0))
end)

ChooserGui.LevelChooser.Maze0.MouseButton1Click:Connect(function()
    TitleGui.Frame.Visible = false
    ChooserGui.LevelChooser.Visible = false
    game.Workspace.CurrentCamera.Blur:Destroy()
    player.Character:MoveTo(game.Workspace.Starting_Positions.StartPart0.Position)
    Values.Playing.Value = true
    Values.CurMaze.Value = 1
    Tween0:Play()
    Maps.Map1.Parent = ServerStorage
    Mazes.Maze1.Parent = ServerStorage
    wait(1)
    player.PlayerScripts.Client.MovingStopped.Disabled = false
    game.Workspace.CurrentCamera.CFrame = player.Character.Head.CFrame
    
    game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    game.SoundService.TitleScreen:Stop()
    game.SoundService.Maze0:Play()
end)

ChooserGui.LevelChooser.Maze1.MouseButton1Click:Connect(function()
    TitleGui.Frame.Visible = false
    ChooserGui.LevelChooser.Visible = false
    game.Workspace.CurrentCamera.Blur:Destroy()
    player.Character:MoveTo(game.Workspace.Starting_Positions.StartPart1.Position)
    Values.Playing.Value = true
    game.Workspace.CurrentCamera.CFrame = Maps.Map1.Vent.CFrame
    game.Workspace.CamPart.Position = Vector3.new(195.912, 164.686, -238.303)
    Values.CurMaze.Value = 2
    Tween1:Play()
    Maps.Map0.Parent = ServerStorage
    Mazes.Maze0.Parent = ServerStorage
    wait(1)
    player.PlayerScripts.Client.MovingStopped.Disabled = false
    game.Workspace.CurrentCamera.CFrame = player.Character.Head.CFrame
    
    game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    game.SoundService.TitleScreen:Stop()
    game.SoundService.Maze1:Play()
end)