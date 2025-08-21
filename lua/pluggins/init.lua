-- plugins/init.lua
-- This file declares all plugins managed by lazy.nvim
return {

    -----------------------------------------------
    -- Syntax highlighting & code parsing
    -----------------------------------------------
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
            })
        end,
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
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            "nvim-telescope/telescope.nvim", -- optional
        },
    },

    -----------------------------------------------
    -- Formatting
    -----------------------------------------------
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvimtools/none-ls-extras.nvim",
        },
        ft = "go",
        opts = function()
            return require "config.null-ls"
        end,
    },

    -----------------------------------------------
    -- Code autocompletion
    -----------------------------------------------
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP completion
            "hrsh7th/cmp-buffer",   -- buffer words
            "hrsh7th/cmp-path",     -- filesystem paths
            "hrsh7th/cmp-cmdline",  -- cmdline completion
            "hrsh7th/cmp-vsnip",    -- snippets support for vsnip
            "hrsh7th/vim-vsnip",    -- snippet engine
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "vsnip" },
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    },

    -----------------------------------------------
    -- Snippets
    -----------------------------------------------
    {
        "rafamadriz/friendly-snippets",
    },
}
