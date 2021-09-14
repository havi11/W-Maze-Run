local Repstore = game:GetService("ReplicatedStorage")
local ValuesFolder = Repstore:WaitForChild("Values")
local player = game.Players.LocalPlayer
local cam = game.Workspace.CurrentCamera
local Orientation1 = Vector3.new(-40, 0, 0)
local TweenService = game:GetService("TweenService")
local TweenSettings = TweenInfo.new(10, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, tick())
local TweenProperties = {}
TweenProperties.CFrame = CFrame.new(-194.185013, 33.3091125, -247.971985, 1, 0, 0, 0, 0.766044199, 0.642787397, 0, -0.642787397, 0.766044199)

local Copy = ValuesFolder:Clone()
Copy.Parent = player

Instance.new("BlurEffect", cam)
wait(1)
game.Workspace.Baseplate.Parent = game:GetService("ServerStorage")
cam.CameraType = Enum.CameraType.Scriptable
cam.CFrame = game.Workspace.CamPart_Preview.CFrame
local Tween = TweenService:Create(cam, TweenSettings, TweenProperties)
Tween:Play()