-- VSCode 💡 for neovim's built-in LSP.

return {
   -- Plugin installation
   "kosayoda/nvim-lightbulb",

   -- Plugin configuration
   config = function()
      require("nvim-lightbulb").setup({
         autocmd = { enabled = true },
      })
   end,
}
