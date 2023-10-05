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
