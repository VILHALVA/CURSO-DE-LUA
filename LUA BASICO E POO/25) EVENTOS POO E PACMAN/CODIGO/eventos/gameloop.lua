
local jogoRodando = true
local tempoAnterior = tempoAtual() -- 120009912991

while jogoRodando do
	local tempoAtual = tempoAtual()
	local tempoQuePassou = tempoAtual - tempoAnterior

	-- Teclado, Mouse, Controle
	processaEventos()

	-- Física, sons, AI, etc.
	atualizaJogo()

	-- Gráficos
	renderiza()

	tempoAnterior = tempoAtual
	wait(0.001)
end

print("Jogo acabou!")