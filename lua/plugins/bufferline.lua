-- Bufferline provides a clean, modern tabline for managing buffers,
-- with LSP diagnostics, icons, and easy navigation.

return {
	-- Plugin installation
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,

	-- Plugin configuration
	config = function()
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

		-- Plugin keymaps
		vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

		vim.keymap.set("n", "<A-h>", "<Cmd>BufferLineMovePrev<CR>", { silent = true })
		vim.keymap.set("n", "<A-l>", "<Cmd>BufferLineMoveNext<CR>", { silent = true })

		vim.keymap.set("n", "<Leader>bp", "<Cmd>BufferLineTogglePin<CR>", { silent = true })

		vim.keymap.set("n", "<Leader>wo", ":BufferLineCloseOthers<CR>", { silent = true })
		vim.keymap.set("n", "<Leader>w", function()
			local bufnr = vim.api.nvim_get_current_buf()
			vim.cmd("bprevious")
			vim.cmd("bd " .. bufnr)
		end, { silent = true })

		vim.keymap.set("n", "<Leader>1", ":BufferLineGoToBuffer 1<CR>")
		vim.keymap.set("n", "<Leader>2", ":BufferLineGoToBuffer 2<CR>")
		vim.keymap.set("n", "<Leader>3", ":BufferLineGoToBuffer 3<CR>")
		vim.keymap.set("n", "<Leader>5", ":BufferLineGoToBuffer 5<CR>")
		vim.keymap.set("n", "<Leader>6", ":BufferLineGoToBuffer 6<CR>")
		vim.keymap.set("n", "<Leader>7", ":BufferLineGoToBuffer 7<CR>")
		vim.keymap.set("n", "<Leader>8", ":BufferLineGoToBuffer 8<CR>")
		vim.keymap.set("n", "<Leader>9", ":BufferLineGoToBuffer 9<CR>")
		vim.keymap.set("n", "<Leader>$", ":BufferLineGoToBuffer -1<CR>")
	end,
}
