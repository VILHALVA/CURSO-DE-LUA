# OPERADOR LÓGICO AND (E)
Em Lua, o operador lógico "E" é representado pelo operador `and`. Ele é usado para combinar duas ou mais expressões lógicas e retornar `true` apenas se todas as expressões forem verdadeiras. Se qualquer uma das expressões for falsa, o resultado será `false`.

Aqui estão alguns exemplos de uso do operador `and` em Lua:

```lua
-- Exemplo 1: Usando 'and' para verificar duas condições
local idade = 25
local temCarteiraDeMotorista = true

if idade >= 18 and temCarteiraDeMotorista then
    print("Pode dirigir.")
else
    print("Não pode dirigir.")
end
```

Neste exemplo, a expressão `idade >= 18` verifica se a idade é maior ou igual a 18, e a expressão `temCarteiraDeMotorista` verifica se a pessoa possui uma carteira de motorista. Ambas as condições devem ser verdadeiras para que a mensagem "Pode dirigir" seja impressa.

```lua
-- Exemplo 2: Usando 'and' para verificar três condições
local temContaBancaria = true
local saldoSuficiente = 1000
local idade = 25

if temContaBancaria and saldoSuficiente >= 500 and idade >= 18 then
    print("Pode abrir uma conta de poupança.")
else
    print("Não pode abrir uma conta de poupança.")
end
```

Neste exemplo, estamos verificando três condições: se a pessoa tem uma conta bancária, se o saldo é suficiente e se a idade é maior ou igual a 18. Todas as três condições devem ser verdadeiras para que a mensagem "Pode abrir uma conta de poupança" seja impressa.

O operador `and` é muito útil para criar expressões lógicas mais complexas que dependem da verdade de várias condições ao mesmo tempo. Certifique-se de que todas as condições necessárias sejam satisfeitas quando estiver usando o operador `and` para que o resultado seja verdadeiro.