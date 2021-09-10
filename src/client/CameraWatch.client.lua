local Player = game.Players.LocalPlayer
local PlrGui = Player:WaitForChild("PlayerGui")
local Values = Player:WaitForChild("Values")

local CamGui = Instance.new("ScreenGui", PlrGui)
local cam = game.Workspace.CurrentCamera
CamGui.Name = "CamGui"

local TXTBTN = Instance.new("TextButton", CamGui)
TXTBTN.Size = UDim2.new(0.078, 0,0.035, 0)
TXTBTN.Position = UDim2.new(0.907, 0,0.483, 0)
TXTBTN.TextScaled = true

TXTBTN.MouseButton1Click:Connect(function()
    if Values.MazeCam == false then
        cam.CameraType = Enum.CameraType.Scriptable
        cam.CFrame = game.Workspace.CamPart.CFrame
        --Values.MazeCam = true
    elseif Values.MazeCam == true then
        cam.CameraType = Enum.CameraType.Custom
        --Values.MazeCam = false
    end

end)a