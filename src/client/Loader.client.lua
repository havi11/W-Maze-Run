local Repstore = game:GetService("ReplicatedStorage")
local ValuesFolder = Repstore:WaitForChild("Values")
local player = game.Players.LocalPlayer

print("Welcome To "..game.Name.." ("..game.GameId.."),")
warn("If you find any errors, please use the feedback, "..player.DisplayName.." (@"..player.Name..".)")
local cam = game.Workspace.CurrentCamera
local Orientation1 = Vector3.new(-40, 0, 0)
local TweenService = game:GetService("TweenService")
local TweenSettings = TweenInfo.new(10, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, tick())
local TweenProperties = {}
TweenProperties.CFrame = CFrame.new(-194.185013, 159.828766, -247.971985, 1, 0, 0, 0, 0.766044199, 0.642787397, 0, -0.642787397, 0.766044199)

local Copy = ValuesFolder:Clone()
Copy.Parent = player
local Values = player:WaitForChild("Values")
Instance.new("BlurEffect", cam)

repeat wait(1) until game.IsLoaded
game.Workspace.Baseplate.Parent = game:GetService("ServerStorage")
cam.CameraType = Enum.CameraType.Scriptable
cam.CFrame = game.Workspace.CamPart_Preview.CFrame
local Tween = TweenService:Create(cam, TweenSettings, TweenProperties)
Tween:Play()
game.SoundService.TitleScreen:Play()
player.PlayerGui.TitleGui.Frame.Version.Text = "Version: "..Values.Version.Value.." (Place Version: "..game.PlaceVersion..")"
print("There should be "..#ValuesFolder:GetChildren().." Values registered, Got "..#Values:GetChildren()..".")

if Values.Playing.Value == true then
Tween:Stop()
end