local source = {}

source.new = function()
	local self = setmetatable({}, { __index = source })
	self.your_awesome_variable = 1
	return self
end

function source:is_available()
	local filetype = vim.bo.filetype
	return filetype == "matlab"
end

function source:get_debug_name()
	return "cmp_matlab"
end

local merge_sources = function(sources, source)
	-- TODO Write this function
end

function source:complete(params, callback)
	local sources = {}
	local n = 0

	local matlab_source = require("cmp-matlab.source")
	local signal_source = require("cmp-matlab.signal")

	for _, entry in ipairs(matlab_source) do
		sources[n] = entry
		n = n + 1
	end
	for _, entry in ipairs(signal_source) do
		sources[n] = entry
		n = n + 1
	end

	callback(sources)
end

function source:resolve(completion_item, callback)
	callback(completion_item)
end

function source:execute(completion_item, callback)
	callback(completion_item)
end

return source
