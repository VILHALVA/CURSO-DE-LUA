# ESCAPE DE TEXTO:
Em Lua, você pode usar sequências de escape para representar caracteres especiais em strings. Isso é útil quando você precisa incluir caracteres que normalmente têm um significado especial em uma string. Aqui estão algumas sequências de escape comuns em Lua:

1. **Sequência de Escape para Aspas Duplas e Aspas Simples:**
   - `\"` representa uma aspa dupla.
   - `\'` representa uma aspa simples.

Exemplo:

```lua
local texto1 = "Isso é uma \"string\" com aspas duplas."
local texto2 = 'Isso é uma \'string\' com aspas simples.'

print(texto1)
print(texto2)
```

2. **Sequência de Escape para Nova Linha:**
   - `\n` representa uma nova linha.

Exemplo:

```lua
local paragrafo = "Linha 1\nLinha 2\nLinha 3"
print(paragrafo)
```

3. **Sequência de Escape para Tabulação:**
   - `\t` representa um caractere de tabulação.

Exemplo:

```lua
local texto = "Primeira Coluna\tSegunda Coluna\tTerceira Coluna"
print(texto)
```

4. **Sequência de Escape para Barra Invertida:**
   - `\\` representa uma barra invertida literal.

Exemplo:

```lua
local caminho = "C:\\Diretorio\\Arquivo.txt"
print(caminho)
```

Essas sequências de escape permitem que você inclua caracteres especiais em suas strings sem que eles sejam interpretados de maneira incorreta. Elas são úteis em situações onde você precisa lidar com formatação de texto ou representação de caminhos de arquivo, por exemplo.