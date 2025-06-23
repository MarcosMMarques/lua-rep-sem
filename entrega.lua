-- entrega.lua
local Entrega = {}
Entrega.__index = Entrega

function Entrega:new(veiculo, endereco1, endereco2, restricoes)
	assert(veiculo and endereco1 and endereco2, "Entrega requer veículo e dois endereços")

	local self = setmetatable({}, Entrega)
	self.endereco1 = endereco1
	self.endereco2 = endereco2
	self.restricoes = restricoes or {}
	self:setVeiculo(veiculo)
	return self
end

function Entrega:setVeiculo(veiculo)
	local accepted = true
	for i, restricaoEntrega in ipairs(self.restricoes) do
		for i2, restricaoVeiculo in ipairs(veiculo.restricoes) do
			if restricaoEntrega == restricaoVeiculo then
				accepted = false
			end
		end
	end

	if accepted then
		self.veiculo = veiculo
	else
		print("[LOG] Inválido, restrições da entrega incompatível com restrições do veículo")
	end
end

function Entrega:calcularTempo()
	print("[LOG] Iniciando cálculo de tempo para entrega...")
	return self.veiculo:calcularTempoEstimado(self.endereco1, self.endereco2)
end

return Entrega
