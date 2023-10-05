-- Classe Zumbi
Zumbi = {}
Zumbi.__index = Zumbi

function Zumbi:create(nome, pontosDeVida)
    local self = setmetatable({}, Zumbi)
    self.nome = nome
    self.pontosDeVida = pontosDeVida
    return self
end

function Zumbi:atacar()
    print(self.nome .. " ataca você!")
end

-- Classe Jogador
Jogador = {}
Jogador.__index = Jogador

function Jogador:create(nome)
    local self = setmetatable({}, Jogador)
    self.nome = nome
    self.pontuacao = 0
    return self
end

function Jogador:advinhar()
    print(self.nome .. ", adivinhe o número (1 a 10):")
    local numeroSecreto = math.random(1, 10)
    local tentativa = tonumber(io.read())

    if tentativa == numeroSecreto then
        print("Você matou o zumbi!")
        self.pontuacao = self.pontuacao + 1
    else
        print("O zumbi ainda está vivo!")
    end
end

-- Função principal
math.randomseed(os.time())  -- Inicializa a semente para números aleatórios

local jogador = Jogador:create("Você")
local zumbi = Zumbi:create("Zumbi Joe", 3)

print("Bem-vindo ao jogo de Zumbi!")
print("Seu objetivo é matar o zumbi adivinhando o número secreto.")

while jogador.pontuacao < 3 and zumbi.pontosDeVida > 0 do
    jogador:advinhar()
    zumbi:atacar()
    zumbi.pontosDeVida = zumbi.pontosDeVida - 1
    print("Pontuação do jogador: " .. jogador.pontuacao)
end

if jogador.pontuacao >= 3 then
    print("Você venceu o jogo!")
else
    print("O zumbi te pegou! Você perdeu.")
end
