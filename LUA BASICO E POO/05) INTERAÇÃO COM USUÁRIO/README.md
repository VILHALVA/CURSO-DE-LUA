# Interação com o Usuário 
Lua, como muitas outras linguagens de programação, permite a interação com o usuário por meio de entrada e saída padrão. Neste artigo, exploraremos como receber entrada do usuário e exibir saídas na tela em Lua.

## Recebendo Entrada do Usuário

Para receber entrada do usuário em Lua, você pode usar a função `io.read()`. Ela permite que o usuário insira texto que será armazenado em uma variável. Aqui está um exemplo simples:

```lua
print("Digite seu nome:")
local nome = io.read()
print("Olá, " .. nome .. "!")
```

Neste exemplo, o programa solicita que o usuário insira seu nome. O texto inserido pelo usuário é armazenado na variável `nome` usando `io.read()`, e depois o programa imprime uma saudação usando o nome inserido.

### Manipulando a Entrada

Você pode usar `io.read()` para capturar strings, mas se desejar converter a entrada em outros tipos de dados, como números, é necessário fazer a conversão apropriada. Por exemplo:

```lua
print("Digite sua idade:")
local idadeTexto = io.read()
local idade = tonumber(idadeTexto)
print("Sua idade é " .. idade)
```

Neste exemplo, a idade é capturada como uma string, convertida em um número usando `tonumber` e depois usada em operações matemáticas.

## Exibindo Saída para o Usuário

Para exibir informações para o usuário em Lua, você pode usar a função `print()`. Aqui está um exemplo simples:

```lua
local mensagem = "Olá, Lua!"
print(mensagem)
```

Neste exemplo, a variável `mensagem` contém uma string, que é impressa na tela usando a função `print()`.

Você também pode combinar várias strings ou variáveis em uma única saída:

```lua
local nome = "João"
local sobrenome = "Silva"
print("Nome completo: " .. nome .. " " .. sobrenome)
```

Isso imprimirá "Nome completo: João Silva" na tela.

## Looping e Controle de Fluxo

Para criar interações mais complexas com os usuários, você pode usar estruturas de controle, como loops e condicionais. Por exemplo, você pode criar um loop que continua a pedir ao usuário até que uma entrada válida seja fornecida:

```lua
local numero
repeat
  print("Digite um número positivo:")
  numero = tonumber(io.read())
until numero and numero > 0

print("Você digitou um número válido:", numero)
```

Neste exemplo, o programa solicita ao usuário que digite um número positivo e continua pedindo até que uma entrada válida seja fornecida.

Esses são os conceitos básicos de interação com o usuário em Lua. Você pode usar essas técnicas para criar programas interativos que recebem entrada do usuário e fornecem feedback com base nas informações inseridas. 