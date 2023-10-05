# REPETIÇÕES FOR E REPEAT
Em Lua, existem duas estruturas de loop adicionais além do `while`: o loop `for` e o loop `repeat...until`. Vou explicar como cada um deles funciona:

## Loop `for`:

O loop `for` é usado para iterar sobre uma sequência de valores, como números em uma faixa específica. Ele é frequentemente usado quando você sabe antecipadamente quantas vezes o loop deve ser executado.

Aqui está a estrutura básica do loop `for`:

```lua
for variável = valor_inicial, valor_final, passo do
    -- Bloco de código a ser repetido
end
```

- `variável` é a variável de controle que será usada para acompanhar o valor atual da iteração.
- `valor_inicial` é o valor inicial da variável.
- `valor_final` é o valor final da variável.
- `passo` é o valor pelo qual a variável será incrementada ou decrementada em cada iteração.

Aqui está um exemplo que conta de 1 a 5 usando um loop `for`:

```lua
for i = 1, 5 do
    print("Contagem:", i)
end
```

Isso imprimirá os números de 1 a 5.

## Loop `repeat...until`:

O loop `repeat...until` é semelhante ao `while`, mas a diferença é que ele executa o bloco de código pelo menos uma vez e verifica a condição após a primeira execução. Se a condição for falsa após a primeira execução, o loop continuará a ser executado até que a condição seja verdadeira.

Aqui está a estrutura básica do loop `repeat...until`:

```lua
repeat
    -- Bloco de código a ser repetido
until condição
```

Aqui está um exemplo que solicita ao usuário para digitar um número maior que 10 usando um loop `repeat...until`:

```lua
local numero

repeat
    print("Digite um número maior que 10:")
    numero = tonumber(io.read())
until numero > 10

print("Você digitou um número maior que 10.")
```

Neste exemplo, o código dentro do loop será executado pelo menos uma vez, mesmo que o usuário digite um número menor ou igual a 10. O loop continuará até que o usuário finalmente digite um número maior que 10.

Ambos os loops `for` e `repeat...until` são ferramentas úteis para controlar a repetição de código em Lua, dependendo dos requisitos específicos do seu programa. Escolha o loop que melhor se adequa à lógica do seu programa e às condições de repetição.