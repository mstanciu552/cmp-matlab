local source = {}

---Source constructor.
source.new = function()
	local self = setmetatable({}, { __index = source })
	self.your_awesome_variable = 1
	return self
end

---Return the source is available or not.
---@return boolean
function source:is_available()
	local filetype = vim.bo.filetype
	return filetype == "matlab"
end

---Return the source name for some information.
function source:get_debug_name()
	return "cmp_matlab"
end

---Invoke completion (required).
---  If you want to abort completion, just call the callback without arguments.
---@param params cmp.SourceCompletionApiParams
---@param callback fun(response: lsp.CompletionResponse|nil)
function source:complete(params, callback)
	callback(require("cmp-matlab.source"))
end

---Resolve completion item that will be called when the item selected or before the item confirmation.
---@param completion_item lsp.CompletionItem
---@param callback fun(completion_item: lsp.CompletionItem|nil)
function source:resolve(completion_item, callback)
	callback(completion_item)
end

---Execute command that will be called when after the item confirmation.
---@param completion_item lsp.CompletionItem
---@param callback fun(completion_item: lsp.CompletionItem|nil)
function source:execute(completion_item, callback)
	callback(completion_item)
end

require("cmp").register_source("cmp_matlab", source.new())
