local player = {}

function player.new()
	local instancia = {
		ouvintes = {}
	}

	local emitirEvento = function(evento)
		for _, v in pairs(instancia.ouvintes[evento]) do
			for _, callback in pairs(v) do
				callback()
			end
		end
	end

	-- Adicionar ouvinte
	-- normalmente chamado: addEventListener
	function instancia:adicionarOuvinte(evento, quem, callback)
		if not self.ouvintes[evento] then self.ouvintes[evento] = {} end
		if not self.ouvintes[evento][quem] then self.ouvintes[evento][quem] = {} end
		table.insert(self.ouvintes[evento][quem], callback)
	end

	-- Remover ouvinte
	-- normalmente chamado: removeEventListener
	function instancia:removerOuvinte(quem)
		table.remove(self.ouvintes["onStarted"][quem])
		table.remove(self.ouvintes["onPoweredUp"][quem])
		table.remove(self.ouvintes["onPoweredDown"][quem])
	end

	-- Ações do usuário
	function instancia:iniciar()
		emitirEvento("onStarted")
	end

	function instancia:comerPizza()
		emitirEvento("onPoweredUp")
	end

	function instancia:esfomeado()
		emitirEvento("onPoweredDown")
	end

	return instancia
end

return player