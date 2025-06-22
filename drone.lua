-- drone.lua
local Veiculo = require("veiculo")
local Drone = setmetatable({}, { __index = Veiculo })
Drone.__index = Drone

function Drone:new(...)
	local self = Veiculo.new(self, ...)
	setmetatable(self, Drone)
	return self
end

return Drone
