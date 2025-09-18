-- Mason is a Neovim plugin that manages external LSP servers,
-- linters, and formatters, making installation and updates easy.

return {
   -- Plugin installation
   "williamboman/mason.nvim",
   dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
   },
   opts = {},

   -- Plugin configuration
   config = function()
      require("mason").setup()
      require("mason-tool-installer").setup({
         ensure_installed = {
            -- LSP
            "gopls",
            "lua-language-server",

            -- Formatters
            "gofumpt",
            "goimports-reviser",
            "golines",
            "stylua",
         },
         auto_update = true,
         run_on_start = true,
      })
   end,
}
