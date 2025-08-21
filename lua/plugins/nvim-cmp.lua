-- Nvim-cmp is a completion plugin for Neovim that provides
-- context-aware suggestions from multiple sources like LSP, buffers, and snippets.

return {
   -- Plugin installation
   "hrsh7th/nvim-cmp",
   event = "InsertEnter",
   dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP completion
      "hrsh7th/cmp-buffer",   -- buffer words
      "hrsh7th/cmp-path",     -- filesystem paths
      "hrsh7th/cmp-cmdline",  -- cmdline completion
      "hrsh7th/cmp-vsnip",    -- snippets support for vsnip
      "hrsh7th/vim-vsnip",    -- snippet engine
   },

   -- Plugin configuration
   config = function()
      local cmp = require("cmp")
      cmp.setup({
         snippet = {
            expand = function(args)
               vim.fn["vsnip#anonymous"](args.body)
            end,
         },
         mapping = cmp.mapping.preset.insert({
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
         }),
         sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "vsnip" },
            { name = "buffer" },
            { name = "path" },
         }),
      })
   end,
}
