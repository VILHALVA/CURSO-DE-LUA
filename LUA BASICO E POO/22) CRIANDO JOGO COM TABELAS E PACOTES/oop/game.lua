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
player1:obter_pocao(pocao.novo())
player2:obter_pocao(pocao.novo())

assert(#player1.pocoes == 1)
assert(#player2.pocoes == 1)

zumbi3:atacar(player2)

zumbi1:atacar(player1)
zumbi2:atacar(player1)
zumbi2:atacar(player1)
player1:usar_pocao()
zumbi1:atacar(player1)
zumbi1:atacar(player1)
zumbi2:atacar(player1)

zumbi2:atacar(player1)

assert(player1.vida == 0)
assert(#player1.pocoes == 0)

assert(player2.vida == 0)
assert(#player2.pocoes == 1)
