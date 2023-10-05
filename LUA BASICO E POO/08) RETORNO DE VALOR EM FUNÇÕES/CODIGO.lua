-- Retornando um Único Valor:
-- Definindo uma função que retorna a soma de dois números
function somar(a, b)
    local resultado = a + b
    return resultado
end

-- Chamando a função e armazenando o resultado em uma variável
local resultadoDaSoma = somar(5, 3)

-- Exibindo o resultado
print("Resultado da soma:", resultadoDaSoma)

-- Retornando Múltiplos Valores:
-- Definindo uma função que retorna múltiplos valores
function dividirEArredondar(a, b)
    local resultadoDivisao = a / b
    local resultadoArredondado = math.floor(resultadoDivisao)
    return resultadoDivisao, resultadoArredondado
end

-- Chamando a função e armazenando os resultados em variáveis
local resultado1, resultado2 = dividirEArredondar(10, 3)

-- Exibindo os resultados
print("Resultado da divisão:", resultado1)
print("Resultado arredondado:", resultado2)
