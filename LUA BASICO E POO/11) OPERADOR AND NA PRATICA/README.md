# OPERADOR AND NA PRÁTICA
Vamos explorar mais exemplos práticos do uso do operador lógico "E" (`and`) em Lua para realizar verificações condicionais mais complexas:

**Exemplo 1: Verificando se um número está em um intervalo:**

```lua
local numero = 15

if numero >= 10 and numero <= 20 then
    print("O número está no intervalo de 10 a 20.")
else
    print("O número está fora do intervalo de 10 a 20.")
end
```

Neste exemplo, estamos usando o operador `and` para verificar se o número está no intervalo de 10 a 20. Ambas as condições (`numero >= 10` e `numero <= 20`) devem ser verdadeiras para que a mensagem "O número está no intervalo de 10 a 20" seja impressa.

**Exemplo 2: Verificando se uma pessoa atende aos critérios para um desconto:**

```lua
local idade = 25
local estudante = false

if idade >= 18 and idade <= 30 and estudante then
    print("Você é elegível para um desconto especial.")
else
    print("Você não é elegível para o desconto.")
end
```

Neste exemplo, estamos verificando três condições: idade entre 18 e 30 anos e se a pessoa é estudante. Todas as três condições devem ser verdadeiras para que a mensagem "Você é elegível para um desconto especial" seja impressa.

**Exemplo 3: Verificando se uma pessoa tem permissão para dirigir e votar:**

```lua
local idade = 21
local temCarteiraDeMotorista = true
local podeVotar = true

if idade >= 18 and temCarteiraDeMotorista and podeVotar then
    print("Você pode dirigir e votar.")
else
    print("Você não pode dirigir e votar simultaneamente.")
end
```

Neste exemplo, estamos verificando se a pessoa tem mais de 18 anos, possui uma carteira de motorista e tem permissão para votar. Todas as três condições devem ser verdadeiras para que a mensagem "Você pode dirigir e votar" seja impressa.

Esses exemplos demonstram como o operador lógico "E" (`and`) é usado para realizar verificações complexas que dependem da verdade de várias condições simultaneamente. É uma ferramenta poderosa para criar lógica condicional em seus programas. Certifique-se de que todas as condições necessárias sejam satisfeitas ao usar o operador `and`.