-- cavalo.lua
local Veiculo = require("veiculo")
local Cavalo = setmetatable({}, { __index = Veiculo })
Cavalo.__index = Cavalo

function Cavalo:new(...)
    local self = Veiculo.new(self, ...)
    setmetatable(self, Cavalo)
    return self
end

return Cavalo
