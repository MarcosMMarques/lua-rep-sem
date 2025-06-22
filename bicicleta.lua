-- bicicleta.lua
local Veiculo = require("veiculo")
local Bicicleta = setmetatable({}, { __index = Veiculo })
Bicicleta.__index = Bicicleta

function Bicicleta:new(...)
    local self = Veiculo.new(self, ...)
    setmetatable(self, Bicicleta)
    return self
end

return Bicicleta
