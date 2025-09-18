-- Setup for lua_ls language server
vim.lsp.config("lua_ls", {
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

-- enable the server
vim.lsp.enable("lua_ls")
