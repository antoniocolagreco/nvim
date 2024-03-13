local keymapper = require("utils.keymapper")
local set = keymapper.set
local setCmd = keymapper.setCmd
local setWithApi = keymapper.setWithApi

-- Buffer Navigation
setCmd("n", "<leader>bn", "bnext") -- Next buffer
setCmd("n", "<leader>bp", "bprevious") -- Prev buffer
setCmd("n", "<leader>bb", "e #") -- Switch to Other Buffer
setCmd("n", "<leader>`", "e #") -- Switch to Other Buffer

-- Directory Navigation
setCmd("n", "<leader>m", "NvimTreeFocus")
setCmd("n", "<leader>e", "NvimTreeFocus")

-- Pane and Window Navigation
set("n", "<C-h>", "<C-w>h") -- Navigate Left
set("n", "<C-j>", "<C-w>j") -- Navigate Down
set("n", "<C-k>", "<C-w>k") -- Navigate Up
set("n", "<C-l>", "<C-w>l") -- Navigate Right
setCmd("n", "<C-h>", "wincmd h") -- Navigate Left
setCmd("n", "<C-j>", "wincmd j") -- Navigate Down
setCmd("n", "<C-k>", "wincmd k") -- Navigate Up
setCmd("n", "<C-l>", "wincmd l") -- Navigate Right
-- setCmd("n", "<C-h>", "TmuxNavigateLeft") -- Navigate Left
-- setCmd("n", "<C-j>", "TmuxNavigateDown") -- Navigate Down
-- setCmd("n", "<C-k>", "TmuxNavigateUp") -- Navigate Up
-- setCmd("n", "<C-l>", "TmuxNavigateRight") -- Navigate Right

-- Window Management
setCmd("n", "<leader>sv", "vsplit") -- Split Vertically
setCmd("n", "<leader>sh", "split") -- Split Horizontally

-- Indenting
set("v", "<", "<gv", { silent = true, noremap = true }) -- Shift Indentation to Left
set("v", ">", ">gv", { silent = true, noremap = true }) -- Shift Indentation to Right

-- Show Full File-Path
setCmd("n", "<leader>pa", "echo expand('%:p')") -- Show Full File Path

-- Comment / Remove Comment
setWithApi("n", "<C-_>", "gtc", { noremap = false, silent = true })
setWithApi("v", "<C-_>", "goc", { noremap = false, silent = true })

-- LSPSaga
local setLspSagaKeys= function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	setCmd("n", "<leader>fd", "Lspsaga finder", opts) -- go to definition
	setCmd("n", "<leader>gd", "Lspsaga peek_definition", opts) -- peak definition
	setCmd("n", "<leader>gD", "Lspsaga goto_definition", opts) -- go to definition
	setCmd("n", "<leader>ca", "Lspsaga code_action", opts) -- see available code actions
	setCmd("n", "<leader>rn", "Lspsaga rename", opts) -- smart rename
	setCmd("n", "<leader>D", "Lspsaga show_line_diagnostics", opts) -- show  diagnostics for line
	setCmd("n", "<leader>d", "Lspsaga show_cursor_diagnostics", opts) -- show diagnostics for cursor
	setCmd("n", "<leader>pd", "Lspsaga diagnostic_jump_prev", opts) -- jump to prev diagnostic in buffer
	setCmd("n", "<leader>nd", "Lspsaga diagnostic_jump_next", opts) -- jump to next diagnostic in buffer
	setCmd("n", "K", "Lspsaga hover_doc", opts) -- show documentation for what is under cursor

	if client.name == "tsserver" then
		setCmd("<leader>oi", "TypeScriptOrganizeImports", opts) -- organise imports
	end
end

return {setLspSagaKeys = setLspSagaKeys }
