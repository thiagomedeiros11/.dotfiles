local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- TypeScript/JavaScript LSP (tsserver)
lspconfig.ts_ls.setup({
  capabilities = capabilities,
})

-- JSON LSP
lspconfig.jsonls.setup({
  capabilities = capabilities,
})

