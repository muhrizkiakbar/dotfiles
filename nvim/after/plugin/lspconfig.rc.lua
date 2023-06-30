local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  --formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augrup format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
}

nvim_lsp.tailwindcss.setup {}

nvim_lsp.solargraph.setup {
  cmd = { 'solargraph', 'stdio' },
  settings = {
    solargraph = {
      diagnostics = true,
      syntax = { enabled = true }
    },
  },
  init_options = { formatting = true },
  filetypes = { 'ruby' },
  root_dir = require 'lspconfig.util'.root_pattern('Gemfile', '.git'),
    flags = {
    debounce_text_changes = 150,
  }
}

