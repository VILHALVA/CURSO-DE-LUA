# MANUAL
## 1. INSTALAÇÃO DO INTERPRETADOR LUA
Para desenvolver em Lua, você precisa instalar o interpretador Lua.

### WINDOWS:
1. Acesse o [site oficial do Lua](https://luabinaries.sourceforge.net/download.html).
2. Baixe a versão mais recente do binário do interpretador Lua para Windows (por exemplo, `lua-5.4.4_Win64_bin.zip`).
3. Extraia o conteúdo do arquivo ZIP em um diretório de sua escolha (por exemplo, `C:\Lua`).
4. Adicione o diretório ao PATH:
   - Abra o Painel de Controle.
   - Vá em Sistema e Segurança > Sistema > Configurações avançadas do sistema.
   - Clique em "Variáveis de Ambiente".
   - Em "Variáveis do sistema", encontre a variável `Path`, clique em "Editar" e adicione o caminho do diretório, por exemplo, `C:\Lua`.

Para verificar se a instalação foi bem-sucedida, abra o Prompt de Comando e execute:
```sh
lua -v
```

### MACOS:
1. Abra o Terminal.
2. Instale o Homebrew se ainda não o tiver instalado:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
3. Use o Homebrew para instalar o Lua:
   ```sh
   brew install lua
   ```

Para verificar se a instalação foi bem-sucedida, abra o Terminal e execute:
```sh
lua -v
```

### LINUX:
1. Abra um terminal.
2. Execute os seguintes comandos para instalar o Lua:
   ```sh
   sudo apt update
   sudo apt install lua5.4
   ```

Para verificar se a instalação foi bem-sucedida, abra um terminal e execute:
```sh
lua -v
```

## 2. CONFIGURAÇÃO DA IDE (INTEGRATED DEVELOPMENT ENVIRONMENT):
Usar uma IDE facilita muito o desenvolvimento em Lua. O Visual Studio Code é uma excelente opção.

### VISUAL STUDIO CODE:
1. Baixe e instale o Visual Studio Code no [site oficial](https://code.visualstudio.com/).
2. Abra o Visual Studio Code.
3. Instale as extensões Lua:
   1. Clique no ícone de Extensões no lado esquerdo.
   2. Pesquise por "Lua" e instale a extensão "Lua" ou "Lua Language Server" da Sumneko.

## 3. CRIANDO O PRIMEIRO PROJETO EM LUA:
### PASSO A PASSO PARA CRIAR UM PROJETO NO VISUAL STUDIO CODE:
1. Abra o Visual Studio Code.
2. Clique em "File" > "Open Folder" e selecione ou crie uma pasta para seu projeto.
3. No painel do lado esquerdo, clique com o botão direito na pasta aberta e selecione "New File".
4. Nomeie o arquivo como `main.lua` e clique em "OK".

### ESCREVENDO O CÓDIGO:
No arquivo `main.lua`, escreva o seguinte código:
```lua
print("Hello, World!")
```

### EXECUTANDO O PROJETO NO VISUAL STUDIO CODE:
1. Abra o terminal integrado no Visual Studio Code (View > Terminal).
2. No terminal, certifique-se de que está no diretório do projeto.
3. Execute o arquivo Lua:
   ```sh
   lua main.lua
   ```

Você verá a mensagem `Hello, World!` impressa no terminal.


Em Lua, a gestão de dependências e requisitos é tratada de maneira diferente em comparação com muitas outras linguagens de programação. Lua é uma linguagem bastante leve e minimalista, e sua biblioteca padrão não inclui um sistema de pacotes complexo. No entanto, há formas de gerenciar dependências e módulos, e o principal mecanismo para isso é o **LuaRocks**.

## 4. MÓDULOS E REQUIRE:
Lua usa a função `require` para carregar módulos e bibliotecas. Quando você usa `require`, o Lua procura um arquivo com o nome do módulo especificado e o executa, retornando o valor retornado pelo módulo.

### EXEMPLO BÁSICO DE USO DE REQUIRE:
Se você tiver um arquivo chamado `mymodule.lua`:

```lua
-- mymodule.lua
local M = {}

function M.say_hello()
    print("Hello from mymodule!")
end

return M
```

Você pode carregá-lo e usá-lo em outro script:

```lua
-- main.lua
local mymodule = require("mymodule")
mymodule.say_hello()
```

### 2. LUAROCKS:
**LuaRocks** é um gerenciador de pacotes para Lua que facilita a instalação e gerenciamento de módulos e bibliotecas. Ele permite que você baixe, instale e atualize pacotes Lua de maneira centralizada.

#### INSTALAÇÃO DO LUAROCKS:
1. **Baixar o LuaRocks:**
   - Acesse [https://luarocks.org/](https://luarocks.org/) e baixe o instalador apropriado para o seu sistema.

2. **Instalar o LuaRocks:**
   - Siga as instruções do instalador.

3. **Adicionar ao PATH:**
   - Certifique-se de adicionar o diretório do LuaRocks ao PATH do sistema, se o instalador não o fez automaticamente.

#### USANDO O LUAROCKS:
1. **Instalar um Pacote:**
   - No Prompt de Comando, use o comando `luarocks install <package-name>`. Por exemplo, para instalar o pacote `luasocket`, você usaria:
     ```bash
     luarocks install luasocket
     ```

2. **Listar Pacotes Instalados:**
   - Use o comando `luarocks list` para ver todos os pacotes instalados.

3. **Atualizar Pacotes:**
   - Use o comando `luarocks update <package-name>` para atualizar um pacote específico.

4. **Desinstalar Pacotes:**
   - Use o comando `luarocks uninstall <package-name>` para remover um pacote.

### EXEMPLO DE USO DE UM PACOTE INSTALADO:
Se você instalar o pacote `luasocket`, você pode usá-lo em seu script Lua como este:

```lua
-- main.lua
local socket = require("socket")

local host = "www.google.com"
local port = 80
local connection = socket.tcp()

connection:connect(host, port)
print("Conectado a " .. host .. ":" .. port)

connection:close()
```

### 3. GERENCIAMENTO DE DEPENDÊNCIAS MANUAL:
Se você não estiver usando o LuaRocks, pode gerenciar dependências manualmente, baixando arquivos de módulos e colocando-os em diretórios específicos. Você pode usar o `package.path` para incluir diretórios adicionais onde Lua deve procurar por módulos.

#### EXEMPLO DE AJUSTE DO `PACKAGE.PATH`:
```lua
-- main.lua
package.path = package.path .. ";./libs/?.lua"

local mymodule = require("mymodule")
mymodule.say_hello()
```

Nesse exemplo, o Lua também procurará módulos na pasta `libs` localizada no mesmo diretório que o script.

## CONCLUSÃO:
Agora você tem o interpretador Lua instalado e configurado, além de um ambiente de desenvolvimento Lua pronto com o Visual Studio Code. Você criou e executou seu primeiro projeto Lua. A partir daqui, você pode explorar mais sobre a linguagem Lua, bibliotecas e frameworks para expandir suas habilidades de programação.
