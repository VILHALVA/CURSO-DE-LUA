# O QUE É NAN, NOT E NUMBER?
Em Lua, o valor `NaN` não é nativamente suportado. Portanto, não há um valor especial `NaN` como em algumas outras linguagens de programação, como JavaScript. No entanto, Lua lida com resultados numéricos especiais de maneira diferente. Veja como alguns cenários que normalmente resultariam em `NaN` são tratados em Lua:

1. **Divisão por zero:**

   Em Lua, a divisão por zero não gera `NaN`. Em vez disso, resulta em `inf` (infinito positivo) ou `-inf` (infinito negativo), dependendo do sinal da divisão.

   Exemplo:

   ```lua
   local resultado = 1 / 0
   print(resultado) -- Isso resulta em inf
   ```

2. **Operações inválidas:**

   Lua não gera `NaN` para operações matemáticas inválidas, como a raiz quadrada de números negativos. Em vez disso, ele retorna um erro.

   Exemplo:

   ```lua
   local resultado = math.sqrt(-1)
   -- Isso gera um erro: "math domain error"
   ```

3. **Operações entre tipos incompatíveis:**

   Lua não permite operações entre tipos incompatíveis, como números e strings, sem conversão explícita. Se você tentar realizar uma operação inválida, provavelmente receberá um erro de tempo de execução.

   Exemplo:

   ```lua
   local resultado = 42 + "hello"
   -- Isso gera um erro: "attempt to perform arithmetic on a string value"
   ```

4. **Erros de conversão:**

   Ao converter uma string que não representa um número válido usando `tonumber()`, o resultado será `nil` em vez de `NaN`.

   Exemplo:

   ```lua
   local numero = tonumber("hello")
   print(numero) -- Isso imprime "nil"
   ```

Portanto, em Lua, você precisa estar ciente de como os valores numéricos especiais são tratados em situações específicas e lidar com erros de maneira apropriada quando operações inválidas ou conversões não podem ser realizadas. `NaN` não é uma preocupação direta em Lua, pois a linguagem lida com essas situações de maneira diferente do que em algumas outras linguagens.
