-- Improves the Neovim built-in LSP experience

return {
   -- Plugin installation
   "nvimdev/lspsaga.nvim",
   dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
   },

   -- Plugin configuration
   config = function()
      require("lspsaga").setup({
         lightbulb = {
            enable = true,
            sign = true,
            virtual_text = false,
         },
      })

      vim.keymap.set("n", "<Leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
      vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
      vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
      vim.keymap.set("n", "<Leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
      vim.keymap.set("n", "<Leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
      vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true })
   end,
}
