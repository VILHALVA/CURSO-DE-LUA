local inimigo = require("entidades/inimigo")
local player = require("entidades/player")
local zumbi = {}

function zumbi.novo()
	local zumbi = inimigo.novo(50, "zumbis")
	zumbi.come_cerebros = true
	zumbi.explode = false
	return zumbi
end

function zumbi.novo_creeper()
	local zumbi = zumbi.novo()
	zumbi.come_cerebros = false
	zumbi.explode = true
	return zumbi
end

function zumbi.atacar(zumbi, player_instancia)
	if zumbi == nil then
		print("Esse zumbi já explodiu!")
	elseif zumbi.explode then
		player.matar(player_instancia)
		print("Zumbi exlodiu!")
		return nil
	else
		player.atacado(player_instancia, zumbi.forca)
		return zumbi
	end
end

return zumbi
