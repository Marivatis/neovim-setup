local lspconfig = require("lspconfig")

-- Setup for lua_ls language server
lspconfig.lua_ls.setup({
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
})
