local keymaps = vim.keymap

local defaultOpts = {noremap=true, silent=true}

-- Directory Navigation
keymaps.set("n","<leader>m", ":NvimTreeFocus<CR>", defaultOpts )
keymaps.set("n","<leader>f", ":NvimTreeToggle<CR>", defaultOpts )

-- Pane Navigation
keymaps.set("n","<C-h>", "<C-w>h", defaultOpts )    -- Navigate Left
keymaps.set("n","<C-j>", "<C-w>j", defaultOpts )    -- Navigate Bottom
keymaps.set("n","<C-k>", "<C-w>k", defaultOpts )    -- Navigate Top
keymaps.set("n","<C-l>", "<C-w>l", defaultOpts )    -- Navigate Right

-- Window Management
keymaps.set("n","<leader>sv", ":vsplit<CR>", defaultOpts )  -- Split Vertically
keymaps.set("n","<leader>sh", ":split<CR>", defaultOpts )  -- Split Horizontally
keymaps.set("n","<leader>sm", "MaximizerToggle<CR>", defaultOpts ) -- Toggle Minimize

-- Indenting
keymaps.set("v","<","<gv")
keymaps.set("v",">",">gv")

-- Comments
keymaps.set("n","<C-_>", "gcc", { noremap = false } ) -- Comment line 
keymaps.set("v","<C-_>", "gcc", { noremap = false } ) -- Comment line 
