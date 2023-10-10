-- Dados do usuário (simulação)
local nomeDeUsuarioValido = "joao123"
local senhaValida = "senha@segura123"

-- Entrada do usuário
print("Digite seu nome de usuário:")
local nomeDeUsuarioDigitado = io.read()
print("Digite sua senha:")
local senhaDigitada = io.read()

-- Verificação das credenciais
if nomeDeUsuarioDigitado == nomeDeUsuarioValido and senhaDigitada == senhaValida then
    print("Acesso concedido! Bem-vindo, " .. nomeDeUsuarioValido .. "!")
else
    print("Credenciais inválidas. Acesso negado.")
end
