-- Neotree is a Neovim plugin that provides a sidebar
-- for browsing and managing your project files,
-- with Git integration and support for Nerd Font icons.

return {
   -- Plugin installation
   "nvim-neo-tree/neo-tree.nvim",
   dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
   },

   -- Plugin configuration
   config = function()
      -- Plugin custom keymaps
      vim.keymap.set("n", "<Leader>e", ":Neotree<CR>", { noremap = true, silent = true })        -- Go to neo-tree
      vim.keymap.set("n", "<Leader>E", ":Neotree toggle<CR>", { noremap = true, silent = true }) -- Open/Close neo-tree
   end,
}
