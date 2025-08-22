-- None-ls integrates external formatters, linters,
-- and code actions into Neovim’s built-in LSP client.

return {
	-- Plugin installation
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvimtools/none-ls-extras.nvim",
	},

	-- Plugin configuration
	opts = function()
		local null_ls = require("null-ls") -- using plugin ex-name
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		return {
			sources = { -- add your formatters here
				-- ESLint diagnostics
				require("none-ls.diagnostics.eslint"),

				-- Go formatters
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,

				-- Lua formatter
				null_ls.builtins.formatting.stylua,
			},
			-- Auto-format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr, async = true })
						end,
					})
				end
			end,
		}
	end,
}
