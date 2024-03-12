local getFn = function(command)
	return [[<cmd>]] .. command .. [[<CR>]]
end

local set = function(mode, keys, command, options)
    vim.keymap.set(mode, keys, command, options)
end

local setCmd = function(mode, keys, command, options)
    vim.keymap.set(mode, keys, getFn(command), options)
end

local setWithApi = function(mode, keys, command, options)
    vim.api.nvim_set_keymap(mode, keys, command, options)
end

return { set = set , setCmd = setCmd, setWithApi = setWithApi }
