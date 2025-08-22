return {
	-- Plugin installation
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	-- Plugin configuration
	config = function()
		require("nvim-tree").setup({})

		-- Plugin custom keymaps
		vim.keymap.set("n", "<Leader>e", ":NvimTreeFocus<CR>", { noremap = true, silent = true }) -- Go to tree
		vim.keymap.set("n", "<Leader>E", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) -- Open/Close tree
	end,
}
