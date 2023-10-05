# ARRAYS, MATRIZES E DICIONÁRIOS
Em Lua, você pode usar tabelas para criar estruturas de dados que podem atuar como arrays, matrizes de dados e dicionários (ou mapas). As tabelas em Lua são uma estrutura de dados flexível e versátil que podem ser usadas para representar diferentes tipos de dados. Vou explicar como criar e usar tabelas para esses propósitos:

## Arrays:

Em Lua, você pode criar arrays usando tabelas. Arrays são coleções de elementos indexados por números inteiros.

Exemplo de um array em Lua:

```lua
local meuArray = {10, 20, 30, 40, 50}

-- Acessando elementos do array
print("Primeiro elemento:", meuArray[1])  -- Saída: 10
print("Terceiro elemento:", meuArray[3])  -- Saída: 30
```

Você pode acessar elementos de um array usando colchetes `[índice]`, onde o índice começa em 1 para o primeiro elemento.

## Matrizes de Dados:

Você pode criar matrizes de dados bidimensionais (ou matrizes) usando tabelas aninhadas, onde cada elemento é acessado por pares de índices.

Exemplo de matriz de dados em Lua:

```lua
local minhaMatriz = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}

-- Acessando elementos da matriz
print("Elemento na linha 2, coluna 3:", minhaMatriz[2][3])  -- Saída: 6
```

Neste exemplo, `minhaMatriz` é uma matriz 3x3 (três linhas e três colunas) e podemos acessar seus elementos usando dois pares de índices.

## Dicionários (Mapas):

Dicionários (ou mapas) em Lua são implementados usando tabelas associativas, onde os elementos são indexados por chaves em vez de índices numéricos.

Exemplo de um dicionário em Lua:

```lua
local meuDicionario = {
    nome = "Alice",
    idade = 30,
    cidade = "São Paulo"
}

-- Acessando elementos do dicionário
print("Nome:", meuDicionario.nome)     -- Saída: Alice
print("Idade:", meuDicionario.idade)   -- Saída: 30
print("Cidade:", meuDicionario.cidade) -- Saída: São Paulo
```

Neste exemplo, `meuDicionario` é um dicionário onde cada elemento é associado a uma chave. As chaves podem ser strings ou qualquer outro tipo que não seja nil.

Tabelas em Lua são muito flexíveis e podem ser usadas para criar estruturas de dados mais complexas, como listas, conjuntos e até mesmo estruturas de dados personalizadas. Elas são uma das características mais poderosas da linguagem Lua.