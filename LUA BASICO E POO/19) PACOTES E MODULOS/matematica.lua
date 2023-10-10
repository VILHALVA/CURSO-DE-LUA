-- matematica.lua

local M = {}  -- Crie uma tabela vazia para representar o módulo

function M.soma(a, b)
    return a + b
end

function M.multiplicacao(a, b)
    return a * b
end

return M  -- Retorne a tabela que representa o módulo
