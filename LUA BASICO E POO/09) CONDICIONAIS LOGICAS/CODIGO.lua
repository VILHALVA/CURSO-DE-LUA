-- Variáveis
local idade = 25
local estaEstudando = true
local estaTrabalhando = false

-- Verificação da idade
if idade < 18 then
    print("Você é menor de idade.")
elseif idade >= 18 and idade < 60 then
    print("Você é um adulto.")
else
    print("Você é um idoso.")
end

-- Verificação do status de estudante e trabalho
if estaEstudando and estaTrabalhando then
    print("Você está estudando e trabalhando.")
elseif estaEstudando then
    print("Você está estudando, mas não trabalhando.")
elseif estaTrabalhando then
    print("Você está trabalhando, mas não estudando.")
else
    print("Você não está estudando e não está trabalhando.")
end

-- Condição composta
local saldoBancario = 1000
local emprestimo = 500
local gastoMensal = 800

if saldoBancario > emprestimo and saldoBancario - gastoMensal > 0 then
    print("Você pode pagar o empréstimo e ainda ter dinheiro sobrando.")
elseif saldoBancario > emprestimo then
    print("Você pode pagar o empréstimo, mas ficará sem dinheiro após pagar suas despesas mensais.")
else
    print("Você não pode pagar o empréstimo neste momento.")
end

-- Ternário
local condicao = true
local valor = condicao and "Verdadeiro" or "Falso"
print("O valor é: " .. valor)
