-- Bufferline provides a clean, modern tabline for managing buffers,
-- with LSP diagnostics, icons, and easy navigation.

return {
	-- Plugin installation
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	-- Plugin configuration
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		})
	end,
}
