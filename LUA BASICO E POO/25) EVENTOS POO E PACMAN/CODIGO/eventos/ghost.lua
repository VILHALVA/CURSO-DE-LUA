
local ghost = {}

function ghost.new(name)
	local instance = {
		name = name,
		onListeners = {}
	}

	local runCallbacksForEvent = function(event)
		for _, v in pairs(instance.onListeners[event]) do
			for _, callback in pairs(v) do
				callback()
			end
		end
	end

	function instance:flee()
		print("FANTASMA " .. self.name .. " está fugindo!")
	end

	function instance:attack()
		print("FANTASMA " .. self.name .. " está atacando!")
	end

	function instance:die()
		runCallbacksForEvent("OnDied")
		print("FANTASMA " .. self.name .. " morreu!")
		self = nil
	end

	function instance:addEventListener(event, source, callback)
		if not self.onListeners[event] then self.onListeners[event] = {} end
		if not self.onListeners[event][source] then self.onListeners[event][source] = {} end
		table.insert(self.onListeners[event][source], callback)
	end

	function instance:removeEventListeners(source)
		table.remove(self.onListeners["OnDied"][source])
	end

	return instance
end

return ghost
