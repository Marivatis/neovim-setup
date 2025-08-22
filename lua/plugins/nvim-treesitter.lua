-- Treesitter: better syntax highlighting, indentation and code navigation

return {
   -- Plugin installation
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   dependencies = {
      {
         "nvim-treesitter/nvim-treesitter-textobjects", -- Syntax aware text-objects
      },
      {
         "nvim-treesitter/nvim-treesitter-context", -- Show code context
         opts = { enable = true, mode = "topline", line_numbers = true },
      },
   },

   -- Plugin configuration
   config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
         -- Add wanted languages support here
         ensure_installed = {
            "dockerfile",
            "gitignore",
            "go",
            "gomod",
            "gosum",
            "gowork",
            "javascript",
            "json",
            "lua",
            "markdown",
            "sql",
            "make",
            "yaml",
         },
         auto_install = true,
         highlight = { enable = true },
         textobjects = { select = { enable = true, lookahead = true } },
      })
   end,
}
