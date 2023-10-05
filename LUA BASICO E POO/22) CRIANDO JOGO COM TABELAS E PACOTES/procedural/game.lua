-- Classes
local player = require("entidades/player")
local pocao = require("entidades/pocao")
local zumbi = require("entidades/zumbi")

-- Instâncias
local player1 = player.novo("Orientadão")
local player2 = player.novo("Objetoncio")

local zumbi1 = zumbi.novo()
local zumbi2 = zumbi.novo()
local zumbi3 = zumbi.novo_creeper()

-- Adicionar inventário
player.obter_pocao(player1, pocao.novo())
player.obter_pocao(player2, pocao.novo())

assert(#player1.pocoes == 1)
assert(#player2.pocoes == 1)

zumbi.atacar(zumbi3, player2)

zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi2, player1)
zumbi.atacar(zumbi2, player1)
player.usar_pocao(player1)
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi1, player1)
zumbi.atacar(zumbi2, player1)

zumbi.atacar(zumbi2, player1)

assert(player1.vida == 0)
assert(#player1.pocoes == 0)

assert(player2.vida == 0)
assert(#player2.pocoes == 1)
