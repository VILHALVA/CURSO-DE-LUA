# INSTALAÇÃO E PRIMEIRO CÓDIGO:
## SUA HISTÓRIA:
A linguagem de programação Lua tem uma história interessante que remonta ao início da década de 1990. Aqui está um resumo da história da Lua:

1. **Origens na PUC-Rio:** Lua foi desenvolvida na PUC-Rio (Pontifícia Universidade Católica do Rio de Janeiro), no Brasil, no início dos anos 1990. Ela foi criada como parte de um projeto de pesquisa em computação gráfica e foi concebida para ser uma linguagem leve, simples e eficiente que pudesse ser incorporada a outros sistemas e aplicações.

2. **Desenvolvimento por Roberto Ierusalimschy, Waldemar Celes e Luiz Henrique de Figueiredo:** A equipe de desenvolvimento original da Lua era composta por Roberto Ierusalimschy, Waldemar Celes e Luiz Henrique de Figueiredo. Cada um deles contribuiu com suas habilidades e conhecimentos para criar a linguagem.

3. **Nome "Lua":** O nome "Lua" significa "lua" em português. Ele foi escolhido porque a lua é frequentemente associada à iluminação na escuridão, e os desenvolvedores queriam criar uma linguagem que fornecesse essa "luz" aos programadores. O nome também é curto e fácil de lembrar, refletindo a simplicidade da linguagem.

4. **Primeira Versão Pública:** A primeira versão pública de Lua, Lua 1.0, foi lançada em 1993. Desde então, a linguagem passou por várias versões e atualizações, evoluindo e melhorando ao longo do tempo.

5. **Uso em Jogos e Aplicativos Embarcados:** Uma das principais áreas onde Lua ganhou popularidade é no desenvolvimento de jogos. Sua simplicidade, eficiência e capacidade de ser incorporada em motores de jogos a tornaram uma escolha popular para scripting em jogos. Além disso, Lua é usada em aplicativos embarcados, como roteadores e sistemas de automação residencial.

6. **Comunidade Ativa:** Lua tem uma comunidade ativa de desenvolvedores e usuários em todo o mundo. A comunidade contribui com bibliotecas, ferramentas e recursos que enriquecem o ecossistema Lua.

7. **Licença MIT:** Lua é distribuída sob a Licença MIT, o que a torna uma escolha popular para projetos de código aberto e comerciais. A licença permite o uso gratuito e a modificação da linguagem.

8. **Adoção por Empresas e Projetos Famosos:** Lua é usada em uma variedade de aplicativos e projetos de destaque, incluindo jogos como "World of Warcraft" da Blizzard Entertainment e a engine gráfica "Unity3D". Também é amplamente usada em sistemas de gerenciamento de redes e em aplicações de automação industrial.

Em resumo, Lua é uma linguagem de programação criada com a intenção de ser simples, eficiente e fácil de incorporar em outros sistemas. Sua história é marcada pelo sucesso em uma variedade de campos, desde jogos até sistemas embarcados e automação. Sua comunidade ativa e licença permissiva continuam a torná-la uma escolha atraente para muitos desenvolvedores em todo o mundo.

## INSTALAÇÃO E CONFIGURAÇÃO:
Para começar a programar em Lua, você precisará instalar a linguagem e configurar um ambiente de desenvolvimento. Aqui estão os passos básicos para instalar e configurar Lua em diferentes sistemas operacionais:

### Instalação em Windows:

1. **Baixe o Executável Lua**: Vá para o site oficial do [Lua](http://www.lua.org/download.html) e escolha a versão do executável Lua para Windows. Geralmente, você pode encontrar uma versão pré-compilada para Windows no formato .exe.

2. **Instale o Executável Lua**: Execute o arquivo .exe baixado e siga as instruções para concluir a instalação. Certifique-se de adicionar Lua ao PATH do sistema durante a instalação para que você possa acessá-la facilmente a partir do prompt de comando.

3. **Verificação da Instalação**: Abra o prompt de comando e digite `lua -v` para verificar se a instalação foi bem-sucedida. Você deve ver a versão do Lua instalada.

### Instalação em macOS:

1. **Homebrew (Recomendado)**: Se você tiver o Homebrew instalado, a instalação do Lua é simples. Abra o Terminal e execute o seguinte comando:

   ```
   brew install lua
   ```

2. **Manualmente**: Você também pode baixar o código-fonte do Lua em http://www.lua.org/download.html e seguir as instruções de compilação para macOS disponíveis no site. Este é um método mais avançado e requer conhecimentos de compilação.

3. **Verificação da Instalação**: Após a instalação, você pode verificar se o Lua foi instalado com sucesso abrindo o Terminal e digitando `lua -v`.

### Instalação em Linux (Ubuntu como exemplo):

1. **Atualize o Pacote de Repositórios**: Abra o Terminal e atualize o pacote de repositórios com o comando:

   ```
   sudo apt-get update
   ```

2. **Instale o Lua**: Use o comando a seguir para instalar o Lua:

   ```
   sudo apt-get install lua5.3
   ```

   Isso instalará a versão 5.3 do Lua. Se você deseja outra versão, substitua `lua5.3` pelo número da versão desejada, por exemplo, `lua5.1` ou `lua5.2`.

3. **Verificação da Instalação**: Verifique a instalação digitando `lua -v` no Terminal.

### Configuração do Ambiente de Desenvolvimento:

Uma vez que o Lua esteja instalado, você pode começar a programar. Você pode usar um editor de texto simples ou uma IDE para escrever código Lua. Alguns editores populares incluem Visual Studio Code, Sublime Text e Notepad++. Lembre-se de que a Lua não requer configurações especiais em um ambiente de desenvolvimento, como a instalação de bibliotecas ou configurações complicadas.

Agora você está pronto para começar a programar em Lua. Basta criar um arquivo .lua, escrever seu código e executá-lo usando o interpretador Lua no prompt de comando ou no Terminal.