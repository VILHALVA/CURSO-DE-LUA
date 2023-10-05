# PACOTES E MÓDULOS - COMO CRIAR E IMPORTAR
Em Lua, pacotes e módulos são uma maneira de organizar e reutilizar código de forma modular. Os módulos em Lua são implementados usando tabelas e podem conter funções, variáveis e até mesmo tabelas aninhadas. Vou explicar como criar e importar módulos em Lua:

## Criando um Módulo Lua:

Para criar um módulo em Lua, você pode simplesmente definir um arquivo `.lua` que contém o código que deseja exportar. Por exemplo, crie um arquivo chamado `meu_modulo.lua` com o seguinte conteúdo:

```lua
-- meu_modulo.lua

local M = {}  -- Crie uma tabela vazia para representar o módulo

M.saudacao = "Olá, mundo!"  -- Variável do módulo

function M.dizer_ola()
    print(M.saudacao)
end

return M  -- Retorne a tabela representando o módulo
```

Neste exemplo, `meu_modulo.lua` define um módulo simples que possui uma variável chamada `saudacao` e uma função chamada `dizer_ola`.

## Importando um Módulo Lua:

Para importar e usar um módulo Lua em outro arquivo, você pode usar a função `require`. A função `require` carrega o módulo e retorna a tabela que representa o módulo. Veja como importar e usar o módulo `meu_modulo.lua`:

```lua
local meu_modulo = require("meu_modulo")

-- Acessando variável do módulo
print(meu_modulo.saudacao)  -- Saída: Olá, mundo!

-- Chamando a função do módulo
meu_modulo.dizer_ola()  -- Saída: Olá, mundo!
```

Certifique-se de que o arquivo do módulo (`meu_modulo.lua`) esteja no mesmo diretório do arquivo que o está importando, ou você pode especificar o caminho relativo ou absoluto do arquivo ao usar `require`.

## Usando Módulos Personalizados:

Você pode criar quantos módulos personalizados desejar e usá-los em seus programas Lua. Isso facilita a organização de seu código e a reutilização de funcionalidades em diferentes partes de seus programas.

Lembre-se de que o valor retornado pelo `require` é armazenado em uma variável local (neste caso, `meu_modulo`). Essa variável contém a tabela que representa o módulo, e você pode acessar as variáveis e funções do módulo por meio dela.

Por exemplo, se você tiver uma função chamada `minha_funcao` definida em `meu_modulo.lua`, você poderá chamá-la assim: `meu_modulo.minha_funcao()`.