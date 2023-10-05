-- Lendo Dados do Usuário:
-- Solicitando ao usuário que insira um número
print("Digite um número:")
local numero = io.read() -- Lê a entrada do usuário

-- Exibindo o número digitado
print("Você digitou:", numero)

-- Exibindo Mensagens e Recebendo Entrada:
-- Exibindo uma mensagem
print("Qual é o seu nome?")

-- Lendo a entrada do usuário
local nome = io.read()

-- Exibindo uma saudação personalizada
print("Olá, " .. nome .. "! Como você está?")

-- Convertendo Entrada para Número:
-- Solicitando um número inteiro ao usuário
print("Digite um número inteiro:")
local entrada = io.read()
local numero = tonumber(entrada) -- Converte a entrada para um número

-- Verificando se a conversão foi bem-sucedida
if numero then
    print("Você digitou o número:", numero)
else
    print("Isso não é um número inteiro válido.")
end
