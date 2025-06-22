-- moto.lua
local Veiculo = require("veiculo")
local Moto = setmetatable({}, { __index = Veiculo })
Moto.__index = Moto

function Moto:new(...)
    local self = Veiculo.new(self, ...)
    setmetatable(self, Moto)
    return self
end

return Moto
