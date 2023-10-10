-- Configuração inicial
local larguraTela, alturaTela = love.graphics.getDimensions()
local x = larguraTela / 2
local y = alturaTela / 2
local velocidadeX = 200
local velocidadeY = 150

-- Função de atualização
function love.update(dt)
    x = x + velocidadeX * dt
    y = y + velocidadeY * dt

    -- Verifica colisões com as paredes e inverte a direção se necessário
    if x < 0 or x > larguraTela then
        velocidadeX = -velocidadeX
    end

    if y < 0 or y > alturaTela then
        velocidadeY = -velocidadeY
    end
end

-- Função de desenho
function love.draw()
    love.graphics.rectangle("fill", x, y, 50, 50)
end
