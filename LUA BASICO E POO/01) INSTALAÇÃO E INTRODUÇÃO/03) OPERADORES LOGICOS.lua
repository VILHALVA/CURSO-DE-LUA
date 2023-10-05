-- Exemplo de operador lógico "and"
local idade = 25
local possuiCarteira = true

if idade >= 18 and possuiCarteira then
    print("Pode dirigir.")
else
    print("Não pode dirigir.")
end

-- Exemplo de operador lógico "or"
local temperatura = 28
local chove = false

if temperatura > 30 or chove then
    print("Vamos à praia!")
else
    print("Fique em casa.")
end

-- Exemplo de operador lógico "not"
local diaEnsolarado = true

if not diaEnsolarado then
    print("Está nublado ou chovendo.")
else
    print("Está ensolarado.")
end
