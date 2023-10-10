-- Função de inicialização
function love.load()
    x = 100    -- Posição inicial X
    y = 100    -- Posição inicial Y
    velocidade = 200 -- Velocidade de movimento em pixels por segundo
end

-- Função de atualização
function love.update(dt)
    -- Movimentação
    if love.keyboard.isDown("left") then
        x = x - velocidade * dt
    end
    if love.keyboard.isDown("right") then
        x = x + velocidade * dt
    end
    if love.keyboard.isDown("up") then
        y = y - velocidade * dt
    end
    if love.keyboard.isDown("down") then
        y = y + velocidade * dt
    end
end

-- Função de desenho
function love.draw()
    -- Desenha um quadrado na posição atual
    love.graphics.rectangle("fill", x, y, 50, 50)
end
