-- main.lua
local Moto = require("moto")
local Endereco = require("endereco")
local Entrega = require("entrega")
local Restricao = require("restricao")

print("Criando veículo tipo Moto")
local moto = Moto:new(1, 2.0, 60, 200, 15, { Restricao.ESTRADA_DE_TERRA })

print("Criando endereços de origem e destino")
local origem = Endereco:new("Rua A", "39400-000", "Centro", 123, "Montes Claros", "MG", 0, 0)
local destino = Endereco:new("Rua B", "39400-001", "Centro", 456, "Montes Claros", "MG", 3, 4)

print("Criando entrega")
local entrega = Entrega:new(moto, origem, destino, {})

print("Tempo estimado: " .. entrega:calcularTempo() .. " horas")
