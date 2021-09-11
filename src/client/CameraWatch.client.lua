local player = game.Players.LocalPlayer
local PlrGui = player:WaitForChild("PlayerGui")
local TweenService = game:GetService("TweenService")
--local Values = Player:WaitForChild("Values")

local CamGui = Instance.new("ScreenGui", PlrGui)
local cam = game.Workspace.CurrentCamera
CamGui.Name = "CamGui"

local TXTBTN = Instance.new("TextButton", CamGui)
TXTBTN.Size = UDim2.new(0.078, 0,0.035, 0)
TXTBTN.Position = UDim2.new(0.907, 0,0.483, 0)
TXTBTN.TextScaled = true
TXTBTN.Text = "Toggle Camera"

wait(1)

local TweenInf = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local TweenProperties0 = {}
TweenProperties0.CFrame = game.Workspace.CamPart.CFrame
local TweenProperties1 = {}
TweenProperties1.CFrame = player.Character.Head.CFrame

local Tween0 = TweenService:Create(cam, TweenInf, TweenProperties0)
local Tween1 = TweenService:Create(cam, TweenInf, TweenProperties1)

TXTBTN.MouseButton1Click:Connect(function()
    if cam.CameraType == Enum.CameraType.Custom then
        cam.CameraType = Enum.CameraType.Scriptable
        Tween0:Play()
        --cam.CFrame = game.Workspace.CamPart.CFrame
        --Values.MazeCam = true
    elseif cam.CameraType == Enum.CameraType.Scriptable then
        Tween1:Play()
        wait(2)
        cam.CameraType = Enum.CameraType.Custom
        --Values.MazeCam = false
    end

end)