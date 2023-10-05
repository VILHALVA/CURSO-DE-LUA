# VARIAVEIS LOCAIS E GLOBAIS
Em Lua, você pode criar variáveis locais e globais para armazenar dados, mas é importante entender a diferença entre elas e quando usá-las. Aqui está uma explicação sobre variáveis locais e globais em Lua:

**Variáveis Locais:**

Variáveis locais são declaradas com a palavra-chave `local` e são visíveis apenas dentro do escopo em que são declaradas. Isso significa que elas não podem ser acessadas fora da função ou bloco em que foram definidas. Variáveis locais têm uma vida útil limitada ao escopo onde foram criadas.

Exemplo de variável local:

```lua
-- Declaração de variável local
local idade = 30

function imprimirIdade()
    -- A variável 'idade' é acessível aqui
    print("Idade dentro da função:", idade)
end

imprimirIdade()

-- Tentar acessar 'idade' fora da função resultará em um erro
print("Idade fora da função:", idade)
```

Neste exemplo, a variável `idade` é local para a função `imprimirIdade()`. Tentar acessá-la fora da função resultará em um erro.

**Variáveis Globais:**

Variáveis globais são declaradas sem a palavra-chave `local` e são visíveis em todo o programa. Elas têm um escopo mais amplo e podem ser acessadas de qualquer lugar do código. No entanto, o uso excessivo de variáveis globais não é recomendado, pois pode levar a problemas de legibilidade e manutenção do código.

Exemplo de variável global:

```lua
-- Declaração de variável global
idade = 30

function imprimirIdade()
    -- A variável 'idade' é acessível aqui
    print("Idade dentro da função:", idade)
end

imprimirIdade()

-- A variável 'idade' é acessível fora da função
print("Idade fora da função:", idade)
```

Neste exemplo, a variável `idade` não é declarada com `local`, tornando-se global e acessível tanto dentro quanto fora da função.

É uma boa prática de programação limitar o uso de variáveis globais, pois elas podem levar a comportamentos inesperados e dificultar a depuração e a manutenção do código. Sempre que possível, use variáveis locais para limitar o escopo de suas variáveis e tornar seu código mais seguro e organizado.