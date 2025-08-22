-- A blazing fast and easy to configure Neovim statusline written in Lua

return {
   -- Plugin installation
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },

   -- Plugin configuration
   config = function()
      require("lualine").setup({})
   end,
}
