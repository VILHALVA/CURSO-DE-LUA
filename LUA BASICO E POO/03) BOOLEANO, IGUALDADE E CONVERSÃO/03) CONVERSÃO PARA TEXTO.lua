-- Exemplo 1: Conversão de um número para string
local numero = 42
local numeroEmTexto = tostring(numero)

print("Número em texto:", numeroEmTexto) -- Isso imprimirá "Número em texto: 42"

-- Exemplo 2: Conversão de um valor booleano para string
local valorBooleano = true
local valorBooleanoEmTexto = tostring(valorBooleano)

print("Valor booleano em texto:", valorBooleanoEmTexto) -- Isso imprimirá "Valor booleano em texto: true"

-- Exemplo 3: Conversão de uma tabela em string (neste caso, a tabela é vazia)
local tabela = {}
local tabelaEmTexto = tostring(tabela)

print("Tabela em texto:", tabelaEmTexto) -- Isso imprimirá "Tabela em texto: table: 0x..."
