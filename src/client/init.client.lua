print("Hello world, from client!")

local Toolibs = game.ReplicatedStorage:FindFirstChild("ToolibsUtils")
local MusicUtils = require(Toolibs.MusicUtil)

print("Testing MusicUtils")
MusicUtils.Enable()
wait(0.1)
MusicUtils.LoadMusic(2)
wait(5)
MusicUtils.LoadMusic(1)