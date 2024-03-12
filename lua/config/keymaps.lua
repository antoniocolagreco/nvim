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
