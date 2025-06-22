-- endereco.lua
local Endereco = {}
Endereco.__index = Endereco

function Endereco:new(rua, cep, bairro, numero, cidade, uf, x, y)
    assert(type(rua) == "string", "Rua deve ser string")
    assert(type(cep) == "string", "CEP deve ser string")
    assert(type(numero) == "number", "Número deve ser número")
    assert(type(x) == "number" and type(y) == "number", "Coordenadas devem ser números")

    local self = setmetatable({}, Endereco)
    self.rua = rua
    self.cep = cep
    self.bairro = bairro
    self.numero = numero
    self.cidade = cidade
    self.UF = uf
    self.coordenadaX = x
    self.coordenadaY = y
    return self
end

return Endereco
