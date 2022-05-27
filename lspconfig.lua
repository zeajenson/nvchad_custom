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

  local lspconfig = require "lspconfig"
  lspconfig['ccls'].setup(default_lsp_setup)
end

return M
