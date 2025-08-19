local lspconfig = require("lspconfig")

-- Setup for lua-language-server
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            format = {
                enable = true,
            },
        },
    },
}

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.lua",
    callback = function()
        vim.lsp.buf.format()
    end,
})
