# CONDICIONAIS LÓGICAS:
Em Lua, as condições lógicas e a estrutura de controle condicional "SE - ENTÃO" (if then else) são usadas para tomar decisões com base em expressões lógicas. Você pode usar a estrutura `if` para avaliar uma condição e executar diferentes blocos de código, dependendo se a condição é verdadeira ou falsa. Aqui está um exemplo:

```lua
-- Exemplo de estrutura condicional SE - ENTÃO (if then else)
local idade = 18

if idade >= 18 then
    print("É maior de idade.")
else
    print("É menor de idade.")
end
```

Neste exemplo:

- `if idade >= 18 then` verifica se a `idade` é maior ou igual a 18. Se essa condição for verdadeira, o bloco de código dentro do `if` será executado.

- `else` é usado para especificar o bloco de código a ser executado se a condição no `if` for falsa. Neste caso, se a idade não for maior ou igual a 18, o bloco de código dentro do `else` será executado.

Você também pode usar múltiplas condições `elseif` para lidar com diferentes cenários:

```lua
-- Exemplo com múltiplas condições SE - ENTÃO (if then else if)
local pontuacao = 75

if pontuacao >= 90 then
    print("Excelente!")
elseif pontuacao >= 70 then
    print("Bom trabalho!")
elseif pontuacao >= 50 then
    print("Você passou.")
else
    print("Você não passou.")
end
```

Neste segundo exemplo, estamos avaliando a pontuação e fornecendo diferentes mensagens com base na faixa em que a pontuação se encontra.

Lembre-se de que em Lua, a estrutura `if` deve sempre começar com um `if` inicial, mas você pode ter quantos `elseif` e `else` forem necessários para cobrir diferentes condições. Apenas o bloco de código correspondente à primeira condição verdadeira será executado. Se nenhuma condição for verdadeira e houver um bloco `else`, o código no bloco `else` será executado.