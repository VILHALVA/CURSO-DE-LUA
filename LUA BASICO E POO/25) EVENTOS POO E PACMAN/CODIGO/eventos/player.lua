local player = {}

function player.new()
	local instance = {
		onListeners = {}
	}

	local runCallbacksForEvent = function(event)
		for _, v in pairs(instance.onListeners[event]) do
			for _, callback in pairs(v) do
				callback()
			end
		end
	end

	function instance:addEventListener(event, source, callback)
		if not self.onListeners[event] then self.onListeners[event] = {} end
		if not self.onListeners[event][source] then self.onListeners[event][source] = {} end
		table.insert(self.onListeners[event][source], callback)
	end

	function instance:removeEventListeners(source)
		table.remove(self.onListeners["OnStarted"][source])
		table.remove(self.onListeners["OnPoweredUp"][source])
		table.remove(self.onListeners["OnPoweredDown"][source])
	end

	function instance:start()
		runCallbacksForEvent("OnStarted")
	end

	function instance:powerUp()
		runCallbacksForEvent("OnPoweredUp")
	end

	function instance:powerDown()
		runCallbacksForEvent("OnPoweredDown")
	end

	return instance
end

return player
