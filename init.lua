--[[
Minetest Mod EventSystem - A Mod adding a very simple Event Handling System

Copyright (C) 2017 LNJ <git@lnj.li>

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

dofile(core.get_modpath(core.get_current_modname()) .. "/class.lua")

-- EventHandler class with constructor
EventHandler = class(function(self)
	-- empty table for later connected functions
	self.connectedFunctions = {}
	return
end)

-- public functions
function EventHandler:connect(func_)
	table.insert(self.connectedFunctions, func_)
end

function EventHandler:disconnect(func_)
	for fnum, func in pairs(self.connectedFunctions) do
		-- search for the function and remove it, if found
		if func == func_ then
			table.remove(self.connectedFunctions, fnum)

			-- return; successfully removed function
			return true
		end
	end

	-- no function removed
	return false
end

function EventHandler:emit(...)
	-- execute all connected functions
	for _, func in pairs(self.connectedFunctions) do
		func(...)
	end
end
