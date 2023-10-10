-- Variáveis
local idade = 25
local possuiCarteiraDeMotorista = true
local possuiCarroProprio = true

-- Verificação da elegibilidade para alugar um carro
if idade >= 18 and possuiCarteiraDeMotorista and possuiCarroProprio then
    print("Você pode alugar um carro.")
else
    print("Você não pode alugar um carro.")
end
