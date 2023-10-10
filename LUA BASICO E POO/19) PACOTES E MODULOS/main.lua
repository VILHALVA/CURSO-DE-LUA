-- main.lua

local matematica = require("matematica")  -- Importe o módulo "matematica"

local resultadoSoma = matematica.soma(5, 3)
local resultadoMultiplicacao = matematica.multiplicacao(4, 6)

print("Soma: " .. resultadoSoma)
print("Multiplicação: " .. resultadoMultiplicacao)
