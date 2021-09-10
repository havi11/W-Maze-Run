local Repstore = game:GetService("ReplicatedStorage")
local ValuesFolder = Repstore:WaitForChild("Values")
local player = game.Players.LocalPlayer

local Copy = ValuesFolder:Clone()
Copy.Parent = player