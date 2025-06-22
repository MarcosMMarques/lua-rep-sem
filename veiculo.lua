-- veiculo.lua
local Veiculo = {}
Veiculo.__index = Veiculo

function Veiculo:new(id, custoCombustivel, velocidadeMedia, peso, capacidade, restricoes)
    assert(type(id) == "number", "ID deve ser número")
    assert(type(custoCombustivel) == "number", "Custo do combustível deve ser número")
    assert(type(velocidadeMedia) == "number", "Velocidade média deve ser número")
    assert(type(peso) == "number", "Peso deve ser número")
    assert(type(capacidade) == "number", "Capacidade deve ser número")

    local self = setmetatable({}, Veiculo)
    self.id = id
    self.custoCombustivel = custoCombustivel
    self.velocidadeMedia = velocidadeMedia
    self.peso = peso
    self.capacidade = capacidade
    self.restricoes = restricoes or {}
    return self
end

function Veiculo:calcularTempoEstimado(end1, end2)
    print("[LOG] Calculando tempo estimado entre endereços...")
    local dx = end1.coordenadaX - end2.coordenadaX
    local dy = end1.coordenadaY - end2.coordenadaY
    local distancia = math.sqrt(dx * dx + dy * dy)
    return distancia / self.velocidadeMedia
end

return Veiculo
