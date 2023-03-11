return {
  cmd = { "gopls", "serve" },
  -- filetypes = { "go", "gomod" },
  -- root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  settings = {
    gopls = {
      analyses = {
        shadow = true,
        nilness = true,
        unusedresult = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
        unreachable = true,
        composites = false,
      },
      experimentalPostfixCompletions = true,
      -- gofumpt = true,
      staticcheck = true,
      usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
      codelenses = {
        generate = true,
        gc_details = false,
        test = true,
        tidy = true,
      },
    },
  },
}
