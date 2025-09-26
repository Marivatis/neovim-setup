-- Pop-up terminal window

return {
   -- Plugin installation
   "voldikss/vim-floaterm",

   config = function()
      -- Make Floaterm take 90% width and 80% height
      vim.g.floaterm_width = 0.7
      vim.g.floaterm_height = 0.9

      -- Escape terminal mode
      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
      -- New terminal
      vim.keymap.set("n", "<leader>t", "<cmd>FloatermNew<cr>", { desc = "Floaterm New" })
      -- Toggle current terminal
      vim.keymap.set("n", "<leader>tt", "<cmd>FloatermToggle<cr>", { desc = "Floaterm Toggle" })
      -- Toggle current terminal from inside of it
      vim.keymap.set("t", "<leader>tt", [[<C-\><C-n><cmd>FloatermToggle<cr>]], { desc = "Floaterm Toggle" })
      -- Next terminal
      vim.keymap.set("n", "<leader>tn", "<cmd>FloatermNext<cr>", { desc = "Floaterm Next" })
      -- Previous terminal
      vim.keymap.set("n", "<leader>tp", "<cmd>FloatermPrev<cr>", { desc = "Floaterm Prev" })
      -- Kill current floaterm
      vim.keymap.set("n", "<leader>tk", "<cmd>FloatermKill<cr>", { desc = "Kill Floaterm" })
      -- Optional: also allow killing directly from terminal mode
      vim.keymap.set("t", "<leader>tk", [[<C-\><C-n><cmd>FloatermKill<cr>]], { desc = "Kill Floaterm" })
   end,
}
