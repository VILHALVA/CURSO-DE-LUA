# PROJETO FINAL POO - JOGO DO ZUMBI
Desenvolver um projeto completo para demonstrar o domínio da Programação Orientada a Objetos (POO) com Lua é um empreendimento significativo. Para um projeto final envolvendo um jogo de Zumbi em Lua, podemos criar um jogo mais elaborado. Vou apresentar uma visão geral do projeto, incluindo classes e funcionalidades que você pode implementar.

**Projeto: Jogo de Sobrevivência Zumbi em Lua**

**Descrição:**
Neste jogo de console, o jogador assume o papel de um sobrevivente em um mundo pós-apocalíptico infestado de zumbis. O objetivo do jogador é sobreviver o maior tempo possível, evitando zumbis e coletando recursos.

**Recursos do Jogo:**

1. **Classes de Personagens:**
   - `Jogador`: Representa o jogador, com atributos como saúde, inventário e posição no mapa.
   - `Zumbi`: Representa um zumbi, com atributos como saúde e posição no mapa.

2. **Mapa:**
   - O mapa é representado como uma matriz, onde cada célula pode conter o jogador, um zumbi ou um recurso.

3. **Recursos:**
   - Existem recursos espalhados pelo mapa, como alimentos e armas. O jogador deve coletá-los para sobreviver e lutar contra os zumbis.

4. **Movimento:**
   - O jogador pode se mover pelo mapa em quatro direções (cima, baixo, esquerda, direita).
   - Os zumbis se movem aleatoriamente pelo mapa em busca do jogador.

5. **Combate:**
   - Quando o jogador e um zumbi ocupam a mesma célula, ocorre um combate.
   - O combate é resolvido com base nas habilidades do jogador e do zumbi, e o resultado afeta a saúde de ambos.

6. **Fim de Jogo:**
   - O jogo termina quando a saúde do jogador chega a zero ou quando o jogador decide sair voluntariamente.
   - O jogador pode escolher continuar ou sair ao final do jogo.

**Implementação:**

Para implementar esse projeto, você deve criar classes para `Jogador` e `Zumbi`, criar a lógica de movimento e combate, gerar o mapa e os recursos aleatoriamente e controlar o estado do jogo.

Aqui está um exemplo simples de como você pode começar a implementar a estrutura do projeto:

```lua
-- Classe Jogador
Jogador = {}
Jogador.__index = Jogador

function Jogador:create(nome)
    local self = setmetatable({}, Jogador)
    self.nome = nome
    self.saude = 100
    self.inventario = {}
    self.posicao = {x = 0, y = 0}
    return self
end

function Jogador:mover(dx, dy)
    -- Implementar a lógica de movimento
end

function Jogador:coletarRecurso(recurso)
    -- Implementar a lógica de coleta de recursos
end

-- Classe Zumbi
Zumbi = {}
Zumbi.__index = Zumbi

function Zumbi:create()
    local self = setmetatable({}, Zumbi)
    self.saude = 50
    self.posicao = {x = 0, y = 0}
    return self
end

function Zumbi:mover()
    -- Implementar a lógica de movimento aleatório
end

-- Função principal do jogo
function jogoPrincipal()
    -- Implementar a lógica principal do jogo
end

-- Inicialização do jogo
print("Bem-vindo ao Jogo de Sobrevivência Zumbi!")
local jogador = Jogador:create("Você")
local zumbi = Zumbi:create()

-- Loop do jogo
while jogador.saude > 0 do
    jogoPrincipal()
end

print("Fim do jogo. Você sobreviveu por um tempo.")
```

Este é apenas um exemplo inicial para ilustrar a estrutura básica do projeto. Você pode expandir e aprimorar esse código, adicionando mais funcionalidades, como geração de mapas aleatórios, recursos, movimento dos zumbis e lógica de combate.

O desenvolvimento de um projeto completo como esse requer tempo e planejamento, mas é uma ótima maneira de aplicar os conceitos de POO em Lua e criar um jogo divertido e desafiador. Boa sorte com seu projeto de Jogo de Sobrevivência Zumbi em Lua!