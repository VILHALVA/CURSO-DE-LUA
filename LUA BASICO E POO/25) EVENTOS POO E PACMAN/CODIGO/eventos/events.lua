
local ghost = require("ghost")
local player = require("player").new()

local ghosts = {}

for pos = 1,2 do
	local ghost = ghost.new(pos)
	player:addEventListener("OnPoweredUp", ghost, function() ghost:flee() end)
	player:addEventListener("OnPoweredDown", ghost, function() ghost:attack() end)
	player:addEventListener("OnStarted", ghost, function() ghost:attack() end)
	ghost:addEventListener("OnDied", player, function()
		player:removeEventListeners(ghost)
	end)

	table.insert(ghosts, ghost)
end

player:start()
print("=================================")
player:powerUp()
print("=================================")
player:powerDown()
print("=================================")
ghosts[2]:die()
print("=================================")
player:powerUp()
print("=================================")
ghosts[1]:die()
print("=================================")
player:powerUp()