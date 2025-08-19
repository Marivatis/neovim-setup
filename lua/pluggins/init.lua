return {
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    },
    {
        "neanias/everforest-nvim",
    },
    config = function()
        require("everforest").setup({
            background = "hard",

        })
    end,
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig"
    },
}
