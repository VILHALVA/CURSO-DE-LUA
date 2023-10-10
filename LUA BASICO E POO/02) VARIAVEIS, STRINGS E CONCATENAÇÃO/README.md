# Variáveis, Strings e Concatenação 
Neste artigo, vamos abordar os conceitos de variáveis, strings e concatenação em Lua. Lua é uma linguagem de programação leve e fácil de aprender, amplamente utilizada em jogos, sistemas embutidos e scripts de automação. Vamos começar entendendo como declarar variáveis, trabalhar com strings e, em seguida, explorar como concatenar strings em Lua.

## Variáveis em Lua

Variáveis em Lua são usadas para armazenar dados, como números, textos e objetos. A declaração de variáveis em Lua é bastante simples. Para declarar uma variável, você usa a palavra-chave `local` seguida do nome da variável e, opcionalmente, um valor inicial.

```lua
local numero = 42
local texto = "Olá, Lua!"
```

Neste exemplo, declaramos duas variáveis: `numero` e `texto`. `numero` contém o valor `42`, que é um número inteiro, enquanto `texto` contém a string `"Olá, Lua!"`.

## Strings em Lua

Strings são sequências de caracteres em Lua. Elas podem ser delimitadas por aspas simples (`'`) ou aspas duplas (`"`). Lua não faz distinção entre aspas simples e aspas duplas para definir strings; ambas são igualmente válidas. Aqui está um exemplo de strings em Lua:

```lua
local nome1 = 'Lua'
local nome2 = "é divertido"
```

## Concatenação de Strings em Lua

A concatenação de strings é o processo de unir duas ou mais strings em uma única string. Em Lua, você pode realizar a concatenação de strings usando o operador `..`. Aqui está um exemplo:

```lua
local primeiroNome = "João"
local sobrenome = "Silva"
local nomeCompleto = primeiroNome .. " " .. sobrenome
print(nomeCompleto)  -- Isso imprimirá "João Silva"
```

Neste exemplo, criamos três variáveis: `primeiroNome`, `sobrenome` e `nomeCompleto`. Usamos o operador `..` para concatenar as variáveis `primeiroNome` e `sobrenome` com um espaço em branco entre elas, criando assim a variável `nomeCompleto`, que armazena o nome completo "João Silva".

Além do operador `..`, você também pode usar a função `string.format` para criar strings formatadas em Lua. Isso permite que você insira variáveis em locais específicos dentro de uma string formatada. Veja um exemplo:

```lua
local idade = 30
local mensagem = string.format("Eu tenho %d anos.", idade)
print(mensagem)  -- Isso imprimirá "Eu tenho 30 anos."
```

Aqui, usamos `string.format` para inserir o valor da variável `idade` na string.

Esses são os conceitos básicos de variáveis, strings e concatenação em Lua. Você pode usar essas habilidades para criar scripts e programas Lua que manipulam dados de texto de maneira eficaz. 