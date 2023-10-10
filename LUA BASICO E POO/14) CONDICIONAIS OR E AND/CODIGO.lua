-- Dados do candidato (simulação)
local idade = 19
local historicoAcademico = "Bom"
local resultadoExameMatematica = 85
local resultadoExameRedacao = 70

-- Verificação da elegibilidade do candidato
if (idade >= 18 and idade <= 25) and
   (historicoAcademico == "Bom" or historicoAcademico == "Muito Bom") and
   (resultadoExameMatematica >= 80 or resultadoExameRedacao >= 80) then
    print("Parabéns! O candidato é elegível para a universidade.")
else
    print("Desculpe, o candidato não atende aos critérios de elegibilidade.")
end
