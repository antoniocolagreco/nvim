return { 
	"EdenEast/nightfox.nvim",
	priority = 999,
	config = function()
		-- setup must be called before loading
		vim.cmd("colorscheme nightfox")
		vim.cmd("highlight Normal ctermbg=none")
		vim.cmd("highlight NonText ctermbg=none")
		vim.cmd("highlight Normal guibg=none")
		vim.cmd("highlight NonText guibg=none")
	end
}

