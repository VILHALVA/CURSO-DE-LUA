# EVENTOS POO E PACMAN
A programação orientada a eventos é uma abordagem de programação em que o código responde a eventos ou ações específicas que ocorrem durante a execução de um programa. Em vez de seguir uma sequência linear de instruções, um programa orientado a eventos fica "à espera" de eventos e executa código associado quando esses eventos ocorrem. Isso é muito comum em jogos, interfaces de usuário e aplicativos interativos.

Um exemplo clássico de jogo que utiliza programação orientada a eventos é o Pac-Man. No jogo Pac-Man, os eventos são gerados principalmente pelas ações do jogador e pelos movimentos dos fantasmas. Aqui estão alguns conceitos relacionados à programação orientada a eventos no contexto do Pac-Man:

1. **Eventos do Jogador:** Os eventos são gerados quando o jogador pressiona as teclas de movimento (para cima, para baixo, para a esquerda ou para a direita) ou quando o jogador decide iniciar ou reiniciar o jogo.

2. **Eventos dos Fantasmas:** Os eventos são gerados quando os fantasmas se movem, colidem com as paredes, colidem com o Pac-Man ou mudam de direção.

3. **Lógica de Eventos:** A programação orientada a eventos no Pac-Man envolve a criação de manipuladores de eventos que respondem a ações específicas. Por exemplo, quando o jogador pressiona uma tecla de movimento, um evento é gerado e um manipulador de evento verifica se o movimento é válido e atualiza a posição do Pac-Man de acordo. Da mesma forma, quando um fantasma muda de direção, um manipulador de evento determina a nova direção com base em uma lógica específica.

4. **Laço Principal do Jogo:** Um laço principal controla o fluxo do jogo e está constantemente verificando se ocorreram eventos. Quando um evento é detectado, o manipulador de evento associado é chamado para processar o evento.

5. **Controle de Tempo:** Em jogos como o Pac-Man, o controle de tempo é crítico. Os eventos precisam ser processados em intervalos regulares para manter o jogo em andamento a uma taxa de quadros consistente. Isso é feito usando um relógio ou um temporizador.

Aqui está um exemplo simplificado de como a programação orientada a eventos pode ser usada para controlar o movimento do Pac-Man em Lua:

```lua
-- Classe do Pac-Man
PacMan = {}
PacMan.__index = PacMan

function PacMan:create()
    local self = setmetatable({}, PacMan)
    self.posicao = {x = 0, y = 0}
    return self
end

function PacMan:mover(dx, dy)
    -- Verifique se o movimento é válido e atualize a posição
end

-- Manipulador de Eventos para Teclas de Movimento
function onKeyPress(tecla)
    if tecla == "cima" then
        pacMan:mover(0, -1)
    elseif tecla == "baixo" then
        pacMan:mover(0, 1)
    elseif tecla == "esquerda" then
        pacMan:mover(-1, 0)
    elseif tecla == "direita" then
        pacMan:mover(1, 0)
    end
end

-- Função principal do jogo
function jogoPrincipal()
    -- Processar eventos e atualizar o estado do jogo
end

-- Inicialização do jogo
print("Bem-vindo ao Pac-Man!")
pacMan = PacMan:create()

-- Loop principal do jogo
while true do
    jogoPrincipal()
end
```

Este é um exemplo simplificado, mas demonstra como a programação orientada a eventos pode ser aplicada em jogos, como o Pac-Man. No mundo real, um jogo completo exigiria uma implementação mais elaborada e muitos outros eventos, lógicas e funcionalidades.