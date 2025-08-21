-- Gitsigns shows Git changes in the gutter and provides
-- hunk actions like stage, reset, and preview inside Neovim.

return {
   -- Plugin installation
   "lewis6991/gitsigns.nvim",

   -- Plugin configuration
   config = function()
      -- Plugin custom keymaps
      vim.keymap.set("n", "]c", ":Gitsigns nav_hunk next<CR>", { noremap = true, silent = true })  -- Navigate to next hunk
      vim.keymap.set("n", "[c", ":Gitsigns nav_hunk prev<CR>", { noremap = true, silent = true })  -- Navigate to previous hunk
      vim.keymap.set("n", "<Leader>hp", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true }) -- Preview hunk
      vim.keymap.set("n", "<Leader>hs", ":Gitsigns stage_hunk<CR>", { noremap = true, silent = true }) -- Stage hunk
      vim.keymap.set("n", "<Leader>hr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true }) -- Reset hunk
   end,
}
