local inimigo = require("entidades/inimigo")
local player = require("entidades/player")
local zumbi = {}

function zumbi.novo()
	local instancia = inimigo.novo(50, "zumbis")
	instancia.come_cerebros = true
	instancia.explode = false

	function instancia:atacar(player_instancia)
		if self == nil then
			print("Esse zumbi já explodiu!")
		elseif self.explode then
			player_instancia:matar()
			print("Zumbi exlodiu!")
			self = nil
		else
			player_instancia:atacado(self.forca)
		end
	end

	return instancia
end

function zumbi.novo_creeper()
	local instancia = zumbi.novo()
	instancia.come_cerebros = false
	instancia.explode = true
	return instancia
end

return zumbi
