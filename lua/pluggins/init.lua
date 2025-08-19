-- plugins/init.lua
-- This file declares all plugins managed by lazy.nvim
return {

    -----------------------------------------------
    -- Syntax highlighting & code parsing
    -----------------------------------------------
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    },

    -----------------------------------------------
    -- Colorschemes
    -----------------------------------------------
    {
        "neanias/everforest-nvim",
        config = function()
            require("everforest").setup({
                background = "hard",

            })
        end,
    },

    -----------------------------------------------
    -- LSP / Language support
    -----------------------------------------------
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig"
    },
}
