# Algoritmos e Funções 
Neste artigo, discutiremos a criação de algoritmos e funções em Lua. Algoritmos são sequências de ações para resolver um problema específico, enquanto as funções são blocos de código reutilizáveis que encapsulam ações em Lua.

## Algoritmos em Lua

Em Lua, a criação de algoritmos envolve a escrita de código que executa uma série de etapas para realizar uma tarefa específica. Aqui está um exemplo simples de um algoritmo que encontra o máximo de dois números:

```lua
function maximo(a, b)
    if a > b then
        return a
    else
        return b
    end
end

local num1 = 10
local num2 = 20

local resultado = maximo(num1, num2)
print("O número máximo é " .. resultado)
```

Neste exemplo, criamos uma função chamada `maximo` que aceita dois argumentos, `a` e `b`, e retorna o maior deles. Em seguida, chamamos essa função com os números `num1` e `num2` e imprimimos o resultado.

## Funções em Lua

As funções em Lua são blocos de código que podem ser chamados repetidamente para realizar uma tarefa específica. Elas são definidas usando a palavra-chave `function`. Aqui está um exemplo de uma função que calcula a soma de dois números:

```lua
function soma(a, b)
    return a + b
end

local num1 = 5
local num2 = 7

local resultado = soma(num1, num2)
print("A soma é " .. resultado)
```

Neste exemplo, a função `soma` aceita dois argumentos, `a` e `b`, e retorna a soma deles. Chamamos a função com os números `num1` e `num2` e imprimimos o resultado.

As funções em Lua podem retornar valores, como nos exemplos acima, ou não retornar nenhum valor. Elas também podem ter argumentos opcionais e valores padrão.

## Algoritmos e Funções Personalizadas

Em Lua, é uma prática comum criar funções personalizadas para encapsular algoritmos específicos. Isso torna seu código mais organizado, legível e reutilizável. Por exemplo, você pode criar uma função para verificar se um número é par:

```lua
function ehPar(numero)
    return numero % 2 == 0
end

local num = 14

if ehPar(num) then
    print(num .. " é um número par.")
else
    print(num .. " não é um número par.")
end
```

Neste exemplo, a função `ehPar` verifica se um número é par e retorna `true` se for, senão retorna `false`. Em seguida, usamos essa função para verificar se `num` é par.

## Conclusão

Algoritmos e funções desempenham um papel fundamental na programação em Lua. Eles permitem que você organize seu código de maneira eficiente, reutilize lógica comum e resolva problemas complexos dividindo-os em etapas mais gerenciáveis. A prática de escrever algoritmos e funções bem definidos é essencial para se tornar um programador eficaz em Lua e em qualquer outra linguagem de programação.