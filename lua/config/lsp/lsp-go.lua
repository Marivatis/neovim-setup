local lspconfig = require("lspconfig")

-- Setup for gopls language server
lspconfig.gopls.setup({
   cmd = { "gopls" },
   filetypes = { "go", "gomod", "gowork", "gotmpl" },
   root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
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
