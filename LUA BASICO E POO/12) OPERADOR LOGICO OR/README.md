# OPERADOR LÓGICO OR (OU)
Em Lua, o operador lógico "OU" é representado pelo operador `or`, e o operador lógico "NÃO" é representado pelo operador `not`. Vamos explorar como esses operadores funcionam com exemplos práticos:

**Operador Lógico "OU" (`or`):**

O operador `or` é usado para combinar duas ou mais expressões lógicas e retornar `true` se pelo menos uma das expressões for verdadeira. Se todas as expressões forem falsas, o resultado será `false`.

```lua
-- Exemplo 1: Verificando se um número é positivo ou par
local numero = 6

if numero > 0 or numero % 2 == 0 then
    print("O número é positivo ou par (ou ambos).")
else
    print("O número não é positivo nem par.")
end
```

Neste exemplo, estamos usando o operador `or` para verificar se o número é positivo ou par (ou ambas as condições). Se pelo menos uma das condições for verdadeira, a mensagem "O número é positivo ou par (ou ambos)" será impressa.

**Operador Lógico "NÃO" (`not`):**

O operador `not` é usado para negar uma expressão lógica, ou seja, inverter seu valor. Se a expressão for verdadeira, `not` a tornará falsa, e vice-versa.

```lua
-- Exemplo 2: Verificando se um valor não é igual a 10
local valor = 7

if not (valor == 10) then
    print("O valor não é igual a 10.")
else
    print("O valor é igual a 10.")
end
```

Neste exemplo, estamos usando o operador `not` para verificar se `valor` não é igual a 10. A mensagem "O valor não é igual a 10" será impressa apenas se a expressão `valor == 10` for falsa.

**Combinação de "OU" e "NÃO":**

Você também pode combinar os operadores `or` e `not` para criar expressões lógicas mais complexas.

```lua
-- Exemplo 3: Verificando se um número não é negativo nem zero
local numero = 5

if not (numero < 0 or numero == 0) then
    print("O número não é negativo nem zero.")
else
    print("O número é negativo ou zero.")
end
```

Neste exemplo, estamos usando `not` para negar a expressão `(numero < 0 or numero == 0)`, o que significa que queremos verificar se o número não é negativo e não é zero. Se essa condição for verdadeira, a mensagem "O número não é negativo nem zero" será impressa.

Esses operadores lógicos são úteis para criar condições lógicas mais complexas em seus programas Lua, permitindo que você tome decisões com base em múltiplas condições e faça verificações condicionais sofisticadas.