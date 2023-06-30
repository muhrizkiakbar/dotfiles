local M = {}

local lsputils = require "lsp.utils"

CONFIG = {}

function M.setup(installed_server)
  require("solargraph").setup {
    tools = {
      hover_actions = {
        auto_focus = true,
      },
    },
    server = {
      capabilities = lsputils.get_capabilities(),
      on_attach = lsputils.lsp_attach,
      on_init = lsputils.lsp_init,
      on_exit = lsputils.lsp_exit,
      flags = { debounce_text_changes = 150 },
      cmd = installed_server._default_options.cmd,
    },
  }
end

return M
