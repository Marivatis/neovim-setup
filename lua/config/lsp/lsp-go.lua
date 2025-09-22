-- Setup for gopls language server
vim.lsp.config("gopls", {
   cmd = { "gopls" },
   filetypes = { "go", "gomod", "gowork", "gotmpl" },
   root_dir = vim.lsp.util.root_pattern("go.work", "go.mod", ".git"),
   settings = {
      gopls = {
         gofumpt = true,
         completeUnimported = true,
         usePlaceholders = true,
         staticcheck = true,
         analyses = {
            unusedparams = true,
            shadow = true,
            ST1000 = false,
         },
      },
   },
})

-- enable the server
vim.lsp.enable("gopls")
