-- moto.lua
local Veiculo = require("veiculo")
local Moto = setmetatable({}, { __index = Veiculo })
Moto.__index = Moto

function Moto:new(...)
	local self = Veiculo.new(self, ...)
	setmetatable(self, Moto)
	return self
end

function Moto:calcularTempoEstimado(end1, end2)
	print("[LOG] Calculando tempo estimado para moto...")

	-- lógica personalizada (exemplo com fator climático ou altura, etc.)
	local dx = end1.coordenadaX - end2.coordenadaX
	local dy = end1.coordenadaY - end2.coordenadaY
	local distancia = math.sqrt(dx * dx + dy * dy) + 300

	return distancia / self.velocidadeMedia
end

return Moto
