local util = require 'lspconfig.util'
local nvim_lsp = require('lspconfig')

-- Combine additional default capabilities of Nvim-CMP with the LSP capabilities to work smoothly in autocomplete:
local capabilities = require('cmp_nvim_lsp').default_capabilities()


local on_attach = function(client, bufnr)
  --formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
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

nvim_lsp.tailwindcss.setup {
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
      experimental = {
        classRegex = { [[\bclass:\s*'([^']*)']], [[\bclass:\s*\"([^"]*)"]] }
      }
    }
  },
  init_options = {
    userLanguages = {
      erb = "erb", "php",
    }
  }
}

nvim_lsp.solargraph.setup {
  cmd = { os.getenv( "HOME" ) .. "/.rbenv/shims/solargraph", 'stdio' },
  root_dir = nvim_lsp.util.root_pattern("Gemfile", ".git", "."),
  settings = {
    solargraph = {
      autoformat = true,
      completion = true,
      diagnostic = true,
      folding = true,
      references = true,
      rename = true,
      symbols = true
    }
  }
}

--nvim_lsp.solargraph.setup {
  --cmd = { 'solargraph', 'stdio' },
  --settings = {
    --solargraph = {
      --diagnostics = true,
      --syntax = { enabled = true }
    --},
  --},
  --init_options = { formatting = true },
  --filetypes = { 'ruby' },
  --root_dir = require 'lspconfig.util'.root_pattern('Gemfile', '.git'),
    --flags = {
    --debounce_text_changes = 150,
  --}
--}


nvim_lsp.gopls.setup {
  cmd = { "gopls" },
  on_attach = on_attach,
  init_options = { formatting = true },
  filetypes = { "go", "gomod", "gotmpl", "gowork" },
  root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    flags = {
    debounce_text_changes = 150,
  },
  single_file_support = true,
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

nvim_lsp.rust_analyzer.setup {
  cmd = { "rust-analyzer" },
  init_options = { formatting = true },
  filetypes = { "rust" },
  root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
  flags = {
    debounce_text_changes = 150,
  },
  single_file_support = true
}
