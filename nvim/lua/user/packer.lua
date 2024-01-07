local status, packer = pcall(require, "packer")

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
print("install_path: " .. install_path)
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    download_result = fn.system({'ls', '-l', install_path})
    print("download_result: " .. download_result)
end

vim.cmd [[packadd packer.nvim]]

if (not status) then
  print("Packer is not installed")
  return
end
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Neosolarized color scheme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  --  adds vscode-like pictograms to neovim built-in lsp
  use {
    'onsails/lspkind-nvim',
  }

  -- snipper LSP
  use({
    "L3MON4D3/LuaSnip",
  })

  -- cmp LSP
  use {
    'hrsh7th/cmp-nvim-lsp'
  }

  -- cmp Buffer
  use {
    'hrsh7th/cmp-buffer'
  }

  -- cmp NVIM
  use {
    'hrsh7th/nvim-cmp'
  }

  -- NVIM LSP
  use {
    'neovim/nvim-lspconfig'
  }

  -- file browser
  use { 'nvim-tree/nvim-tree.lua' }

  ---- language server to inject LSP diagnostics, code actions, and more via Lua
  --use({
  --  'jose-elias-alvarez/null-ls.nvim'
  --})

  ---- prettier
  --use {
  --  'MunifTanjim/prettier.nvim'
  --}

  -- mason install and manage LSP servers, DAP servers, linters, and formatters
  use {
    "williamboman/mason.nvim",
  }

  -- mason config
  use {
    "williamboman/mason-lspconfig.nvim",
  }

  -- A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
  use({
    "glepnir/lspsaga.nvim",
  })

  -- Treesitter configuration and abstraction  layer of newovim
  use {
        'nvim-treesitter/nvim-treesitter'
    }

  use { 'MDeiml/tree-sitter-markdown' }

  -- icons
  use 'nvim-tree/nvim-web-devicons'

  -- telescope for fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- telescope file browser
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use({
    "kelly-lin/telescope-ag",
    requires = { "nvim-telescope/telescope.nvim" },
  })

  ---- autopairs
  --use {
  --  "windwp/nvim-autopairs",
  --  config = function() require("nvim-autopairs").setup {} end
  --}

  use { 'mattn/emmet-vim' }

  ---- typescript auto tag
  --use 'windwp/nvim-ts-autotag'

  -- coloring hashtag
  use 'norcalli/nvim-colorizer.lua'

  -- bufferline (tab)
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- git sign of change or remove
  use 'lewis6991/gitsigns.nvim'

  -- git
  use {
    'dinhhuy258/git.nvim'
  }

  -- zen mode
  use 'folke/zen-mode.nvim'

  -- rubocop
  use 'ngmy/vim-rubocop'

  ---- markdown preview
  --use({
  --  "iamcco/markdown-preview.nvim",
  --  run = function() vim.fn["mkdp#util#install"]() end,
  --})

  -- rspec
  use { 'muhrizkiakbar/vim-rspec' }

  -- commenter
  use { 'preservim/nerdcommenter' }

  -- git blame
  use { 'f-person/git-blame.nvim' }

  -- surround
  use { 'tpope/vim-surround' }

  -- git conflict
  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end}

  -- vim go
  use { 'fatih/vim-go', run = ':GoInstallBinaries' }


  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end

  -- Testing Package
  use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-neotest/neotest-plenary",
			"nvim-neotest/neotest-vim-test",
			"olimorris/neotest-rspec",
      "nvim-neotest/neotest-go",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
		},
	})

  --DAP debugging js
  use { 'mfussenegger/nvim-dap' }
  use { 'mxsdev/nvim-dap-vscode-js' }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)
