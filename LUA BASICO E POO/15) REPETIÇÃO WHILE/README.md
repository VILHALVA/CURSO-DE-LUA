# REPETIÇOES WHILE
Em Lua, o loop `while` (enquanto) permite que você execute um bloco de código repetidamente enquanto uma condição específica for verdadeira. Aqui está a estrutura básica do loop `while`:

```lua
while condição do
    -- Bloco de código a ser executado enquanto a condição for verdadeira
end
```

O bloco de código dentro do loop será executado repetidamente enquanto a `condição` especificada for verdadeira. Quando a `condição` se tornar falsa, a execução do loop será interrompida, e o programa continuará após o bloco `end` do loop.

Aqui está um exemplo prático de uso do loop `while` em Lua:

```lua
local contador = 1

while contador <= 5 do
    print("Contagem:", contador)
    contador = contador + 1
end
```

Neste exemplo, o loop `while` começa com `contador` igual a 1 e continuará executando o bloco de código dentro dele enquanto `contador` for menor ou igual a 5. A cada iteração do loop, o valor de `contador` é incrementado em 1. O resultado será a impressão de uma contagem de 1 a 5.

É importante garantir que a `condição` especificada no `while` eventualmente se torne falsa para evitar loops infinitos. Certifique-se de que a condição seja avaliada corretamente e que haja uma maneira de alterar a variável de controle dentro do loop para atender à condição de término.

Você também pode usar o loop `while` para executar tarefas com base em condições complexas e até mesmo para criar loops infinitos controlados por variáveis ou entrada do usuário. Certifique-se de ter um plano para sair do loop quando necessário.