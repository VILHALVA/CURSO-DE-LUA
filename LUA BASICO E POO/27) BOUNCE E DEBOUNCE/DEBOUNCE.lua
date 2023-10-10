local debounceDelay = 0.5  -- Tempo de debounce em segundos
local lastPressTime = 0     -- Hora da última pressão de tecla

function love.update(dt)
    -- Detecta a pressão da tecla e executa a ação se o tempo de debounce passou
    if love.keyboard.isDown("space") then
        local currentTime = love.timer.getTime()
        if currentTime - lastPressTime >= debounceDelay then
            print("Ação executada!")
            lastPressTime = currentTime
        end
    end
end

function love.draw()
    love.graphics.print("Pressione a tecla Espaço para acionar a ação.", 10, 10)
end
