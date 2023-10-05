

local fantasma = require("fantasma")
local player = require("player").new()

local fantasmas = {}

for nome = 1, 2 do
	local novo = fantasma.new(nome)
	player:adicionarOuvinte("onPoweredUp", novo, function()
		novo:fugir()
	end)
	player:adicionarOuvinte("onPoweredDown", novo, function()
		novo:atacar()
	end)
	player:adicionarOuvinte("onStarted", novo, function()
		novo:atacar()
	end)

	novo:adicionarOuvinte("onDied", player, function()
		player:removerOuvinte(novo)
	end)

	table.insert(fantasmas, novo)
end

player:iniciar()
print("=================================")
player:comerPizza()
print("=================================")
player:esfomeado()
print("=================================")
fantasmas[2]:morrer()
print("=================================")
player:comerPizza()
player:esfomeado()
fantasmas[1]:morrer()