local M = {}
M.setup_lsp = function(attach, capabilities)
    local default_lsp_setup = {
    on_attach = attach,
    capabilities = capabilities,
    flags ={
      debounce_text_changes = 150,
    },
    settings = {}
  }

  local servers = {"html", "cssls", "ccls", "bashls", "eslint"};

  local lspconfig = require "lspconfig"

  for _, lsp in ipairs(servers) do lspconfig[lsp].setup(default_lsp_setup) end

end

return M
