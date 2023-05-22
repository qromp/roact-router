local container = script.Parent.Parent
local RoactHooked = container:FindFirstChild("RoactHooked")
	or container:FindFirstChild("roact-hooked")
	or container.Parent:FindFirstChild("RoactHooked")
	or container.Parent:FindFirstChild("roact-hooked")

if not RoactHooked then
	error("RoactHooked Router failed to find RoactHooked. Did you make sure RoactHooked is in the same folder?")
end

if RoactHooked:IsA("Folder") then
	RoactHooked = RoactHooked:FindFirstChildOfClass("ModuleScript")
end

return require(RoactHooked)
