# RETORNO DE VALOR EM FUNÇÕES
O retorno de valor em funções é um conceito fundamental em programação e em Lua, que é uma linguagem de programação que suporta funções que podem retornar resultados. Quando uma função em Lua é invocada, ela pode opcionalmente produzir um valor como resultado, que pode ser usado em outras partes do programa.

Aqui está uma explicação detalhada sobre o retorno de valor em funções em Lua:

1. **Definindo Funções com Retorno de Valor:**

   Para que uma função retorne um valor em Lua, você deve definir a função usando a palavra-chave `function` e, dentro da função, usar a palavra-chave `return` seguida do valor que você deseja retornar. Por exemplo:

   ```lua
   function soma(a, b)
       return a + b
   end
   ```

   Neste exemplo, a função `soma` recebe dois argumentos, `a` e `b`, e retorna a soma deles usando a instrução `return`.

2. **Invocando Funções e Capturando o Retorno:**

   Quando você chama uma função que retorna um valor, você pode capturar esse valor atribuindo-o a uma variável. Por exemplo:

   ```lua
   local resultado = soma(10, 5)
   ```

   A função `soma(10, 5)` retorna o valor `15`, que é armazenado na variável `resultado`.

3. **Usando Valores Retornados:**

   Os valores retornados por funções podem ser usados em expressões, atribuições, impressões e qualquer outro contexto onde valores são esperados. Por exemplo:

   ```lua
   local total = soma(7, 3)
   print("O resultado da soma é: " .. total)
   ```

   Neste caso, a função `soma(7, 3)` retorna `10`, que é usado para calcular `total` e também é impresso na tela.

4. **Funções Sem Retorno:**

   Nem todas as funções em Lua precisam retornar valores. Se uma função não contiver a instrução `return`, ela será considerada uma função sem retorno, e seu valor de retorno será `nil`. Por exemplo:

   ```lua
   function saudacao(nome)
       print("Olá, " .. nome .. "!")
   end
   ```

   Neste caso, a função `saudacao` não possui uma instrução `return`, então ela não retorna um valor. Quando você a chama, não há nada para capturar como resultado.

5. **Múltiplos Valores de Retorno:**

   Em Lua, uma função pode retornar vários valores, separando-os por vírgulas na instrução `return`. Por exemplo:

   ```lua
   function divide(a, b)
       return a / b, a % b
   end
   ```

   Ao chamar `divide(10, 3)`, você pode capturar ambos os valores retornados:

   ```lua
   local quociente, resto = divide(10, 3)
   ```

   Neste caso, `quociente` conterá `3` e `resto` conterá `1`.

O retorno de valor em funções permite que você crie funções que realizem cálculos e forneçam resultados úteis para outras partes do seu programa. É uma maneira eficaz de modularizar seu código e reutilizar lógica em várias partes do programa.