# MANUAL
## 1. INSTALAÇÃO DO INTERPRETADOR LUA
Para desenvolver em Lua, você precisa instalar o interpretador Lua.

### WINDOWS:
1. Acesse o [site oficial do Lua](https://www.lua.org/download.html).
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

## CONCLUSÃO:
Agora você tem o interpretador Lua instalado e configurado, além de um ambiente de desenvolvimento Lua pronto com o Visual Studio Code. Você criou e executou seu primeiro projeto Lua. A partir daqui, você pode explorar mais sobre a linguagem Lua, bibliotecas e frameworks para expandir suas habilidades de programação.