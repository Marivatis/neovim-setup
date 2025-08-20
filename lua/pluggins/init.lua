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
        lazy = false,
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

    -----------------------------------------------
    -- Project tree / Explorer
    -----------------------------------------------
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
    },

    -----------------------------------------------
    -- Git integration pluggins
    -----------------------------------------------
    {
        "lewis6991/gitsigns.nvim",
    },
    {
        "tpope/vim-fugitive",
    },
}
