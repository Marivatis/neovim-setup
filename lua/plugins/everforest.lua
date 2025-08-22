-- Everforest colorscheme

return {
   -- Plugin installation
   "neanias/everforest-nvim",
   priority = 1000,

   -- Plugin configuration
   config = function()
      local everforest = require("everforest")

      everforest.setup({
         background = "hard",
      })

      vim.cmd.colorscheme("everforest")
   end,
}
