print("Hello world, from server!")
local Toolibs = game.ReplicatedStorage:FindFirstChild("ToolibsUtils")
local InstanceUtil = require(Toolibs.InstanceUtil)

print("Testing InstanceUtil")
local object = InstanceUtil.Instanciate("SpawnLocation", game.Workspace, {["Name"] = "Door", ["Size"] = Vector3.new(2,2,2), ["Anchored"] = true, ["TopSurface"] = Enum.SurfaceType.Smooth, ["BottomSurface"] = Enum.SurfaceType.Smooth, ["Position"] = Vector3.new(0,0,0)})
wait(2)
InstanceUtil.ChangeProperties(object, {["Color"] = Color3.fromRGB(255, 0, 0), ["Size"] = Vector3.new(4,4,4)})
wait(2)
local f = InstanceUtil.Instanciate("Folder", game.Workspace, {["Name"] = "PartFolder"})
for i = 1, 500 do
    InstanceUtil.Instanciate("Part", f, {["Name"] = "GeneratedPart", ["Size"] = Vector3.new(math.random(1,50), math.random(1,50), math.random(1,50)), ["Position"] = Vector3.new(math.random(-200,200), math.random(-200,200), math.random(-200,200)), ["TopSurface"] = Enum.SurfaceType.Smooth, ["BottomSurface"] = Enum.SurfaceType.Smooth, ["Color"] = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255)), ["Anchored"] = true})
    wait()
end
wait(1)
InstanceUtil.Weld(object, f)
local T = game.TweenService:Create(object, TweenInfo.new(15, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut, 0, false, 0), {CFrame = object.CFrame + Vector3.new(math.random(-255,255), math.random(-255,255), math.random(-255,255))})
T:Play()