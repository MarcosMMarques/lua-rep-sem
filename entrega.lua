-- entrega.lua
local Entrega = {}
Entrega.__index = Entrega

function Entrega:new(veiculo, endereco1, endereco2, restricoes)
    assert(veiculo and endereco1 and endereco2, "Entrega requer veículo e dois endereços")

    local self = setmetatable({}, Entrega)
    self.veiculo = veiculo
    self.endereco1 = endereco1
    self.endereco2 = endereco2
    self.restricoes = restricoes or {}
    return self
end

function Entrega:calcularTempo()
    print("[LOG] Iniciando cálculo de tempo para entrega...")
    return self.veiculo:calcularTempoEstimado(self.endereco1, self.endereco2)
end

return Entrega
