-- Exemplo de NaN (Not-a-Number)
local resultado1 = 0 / 0  -- Isso gera um NaN

-- Verifica se resultado1 é NaN
if resultado1 ~= resultado1 then
    print("Resultado1 é NaN")
else
    print("Resultado1 não é NaN")
end

-- Exemplo de NOT (Operador Lógico)
local valor = false

-- Verifica se valor é verdadeiro
if not valor then
    print("Valor é falso")
else
    print("Valor é verdadeiro")
end

-- Exemplo de Number (Tipo de Dado)
local numero = 42

-- Verifica se numero é um número
if type(numero) == "number" then
    print("Numero é um número")
else
    print("Numero não é um número")
end
