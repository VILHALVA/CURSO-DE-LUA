-- Variável global
globalVar = "Isso é uma variável global"

-- Função que usa uma variável local e global
function exemplo()
    -- Variável local
    local localVar = "Isso é uma variável local"
    
    print("Dentro da função:")
    print(localVar)    -- Imprime a variável local
    print(globalVar)   -- Imprime a variável global
end

-- Chamando a função
exemplo()

print("Fora da função:")
-- print(localVar)  -- Isso geraria um erro, pois localVar é uma variável local da função
print(globalVar)    -- Isso funciona, pois globalVar é uma variável global
