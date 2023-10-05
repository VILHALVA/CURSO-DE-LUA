-- ... por�m como transformar esses procedimentos
-- em m�todos?

local player = {}

function player.novo(nome)
	return {
		vida = 200,
		pocoes = {},
		nome = nome
	}
end

function player.vivo(player_instancia)
	return player_instancia.vida > 0
end

function player.atacado(player_instancia, forca)
	if player.vivo(player_instancia) then
		player_instancia.vida = player_instancia.vida - forca

		if player_instancia.vida <= 0 then
			print("Ap�s o ataque, " .. player_instancia.nome .. " morreu!")
		else
			print("Ap�s o ataque, " .. player_instancia.nome .. " agora tem " .. player_instancia.vida .. " de vida!")
		end
	else
		print(player_instancia.nome .. " j� est� morto(a)!")
	end
end

function player.matar(player_instancia)
	if player.vivo(player_instancia) then
		player_instancia.vida = 0
		print(player_instancia.nome .. " morreu!")
	else
		print(player_instancia.nome .. " j� est� morto(a)!")
	end
end

function player.obter_pocao(player_instancia, pocao)
	table.insert(player_instancia.pocoes, pocao)
end

function player.usar_pocao(player_instancia)
	if #player_instancia.pocoes > 0 then
		player_instancia.vida = player_instancia.vida + player_instancia.pocoes[1].vida
		table.remove(player_instancia.pocoes, 1)
		print(player_instancia.nome .. " usou uma po��o!")
	else
		print(player_instancia.nome .. " n�o tem po��es!")
	end
end

return player
