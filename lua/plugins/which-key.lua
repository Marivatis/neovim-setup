-- Creates pop-up window on your command
-- where are shown all possible keybindings

return {
   -- Plugin installation
   "folke/which-key.nvim",
   event = "VeryLazy",
   keys = {
      {
         "<leader>?",
         function()
            require("which-key").show({ global = false })
         end,
         desc = "Buffer Local Keymaps (which-key)",
      },
   },

   -- Plugin configuration
   config = function()
      local wk = require("which-key")

      -- Hide bufferline’s <leader>1..9 bindings from popup
      local ignore = {}
      for i = 1, 9 do
         ignore["<leader>" .. i] = "which_key_ignore"
      end

      wk.register(ignore)
   end,
}
