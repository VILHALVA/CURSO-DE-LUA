-- Exemplo 1: Usando valores booleanos em uma expressão condicional
local idade = 25

if idade >= 18 then
    print("É maior de idade.")
else
    print("É menor de idade.")
end

-- Exemplo 2: Atribuindo valores booleanos a variáveis
local temCarro = true
local temBicicleta = false

if temCarro then
    print("Possui um carro.")
end

if not temBicicleta then
    print("Não possui uma bicicleta.")
end

-- Exemplo 3: Operações lógicas com valores booleanos
local estaChovendo = true
local estaFrio = false

local precisaGuardaChuva = estaChovendo and not estaFrio
if precisaGuardaChuva then
    print("Leve um guarda-chuva.")
else
    print("Não precisa de guarda-chuva.")
end
