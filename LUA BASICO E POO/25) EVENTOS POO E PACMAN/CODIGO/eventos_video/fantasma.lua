local fantasma = {}

function fantasma.new(nome)
	local instancia = {
		nome = nome,
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
		table.remove(self.ouvintes["onDied"][quem])
	end

	-- Ações do fantasma
	function instancia:fugir()
		print("FANTASMA: " .. self.nome .. " está fugindo!")
	end

	function instancia:atacar()
		print("FANTASMA: " .. self.nome .. " está atacando!")
	end

	function instancia:morrer()
		print("FANTASMA: " .. self.nome .. " morreu!")
		emitirEvento("onDied")
	end

	return instancia
end

return fantasma