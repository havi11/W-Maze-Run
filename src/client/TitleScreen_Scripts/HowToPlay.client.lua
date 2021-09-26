local player = game.Players.LocalPlayer
local plrGui = player:WaitForChild("PlayerGui")
local HTPGUI = plrGui:WaitForChild("HowToPlayGui")

HTPGUI.Frame.Visible = true
HTPGUI.Frame.TextButton.MouseButton1Click:Connect(function()
    HTPGUI:Destroy()
end)