-- Dados do candidato (simulação)
local anosDeExperiencia = 5
local possuiDoutorado = true

-- Verificação da elegibilidade do candidato
if anosDeExperiencia >= 3 or possuiDoutorado then
    print("Parabéns! Você atende aos critérios e é elegível para a vaga de emprego.")
else
    print("Desculpe, você não atende aos critérios para a vaga de emprego.")
end
