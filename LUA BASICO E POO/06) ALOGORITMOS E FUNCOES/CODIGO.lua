-- Algoritmo sem Função:
-- Algoritmo para calcular a área de um retângulo
local comprimento = 10
local largura = 5
local area = comprimento * largura

print("A área do retângulo é:", area)

-- Criando uma Função:
-- Definindo uma função para calcular a área de um retângulo
function calcularAreaRetangulo(comprimento, largura)
    local area = comprimento * largura
    return area
end

-- Chamando a função e armazenando o resultado em uma variável
local comprimento = 10
local largura = 5
local area = calcularAreaRetangulo(comprimento, largura)

-- Exibindo o resultado
print("A área do retângulo é:", area)

--Função com Retorno Múltiplo:
-- Definindo uma função que retorna múltiplos valores
function calcularAreaEPerimetroRetangulo(comprimento, largura)
    local area = comprimento * largura
    local perimetro = 2 * (comprimento + largura)
    return area, perimetro
end

-- Chamando a função e armazenando os resultados em variáveis
local comprimento = 10
local largura = 5
local area, perimetro = calcularAreaEPerimetroRetangulo(comprimento, largura)

-- Exibindo os resultados
print("A área do retângulo é:", area)
print("O perímetro do retângulo é:", perimetro)
