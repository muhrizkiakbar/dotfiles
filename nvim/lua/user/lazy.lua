-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
  {'windwp/windline.nvim'},

  -- Neosolarized color scheme
  {'svrana/neosolarized.nvim', dependencies = { 'tjdevries/colorbuddy.nvim' }},

  -- Solarized Osaka
  {'craftzdog/solarized-osaka.nvim'},

  --  adds vscode-like pictograms to neovim built-in lsp
  {'onsails/lspkind-nvim'},

  -- snipper LSP
  --use({
    --"L3MON4D3/LuaSnip",
  --})

  -- cmp LSP
  {'hrsh7th/cmp-nvim-lsp'},
  {'saadparwaiz1/cmp_luasnip'},

  -- cmp Buffer
  {'hrsh7th/cmp-buffer'},

  -- NVIM LSP
  {'neovim/nvim-lspconfig'},

  -- file browser
  {'nvim-tree/nvim-tree.lua'},

  ---- language server to inject LSP diagnostics, code actions, and more via Lua
  --use({
  --  'jose-elias-alvarez/null-ls.nvim'
  --})

  ---- prettier
  --use {
  --  'MunifTanjim/prettier.nvim'
  --}

  -- mason install and manage LSP servers, DAP servers, linters, and formatters
  {"williamboman/mason.nvim"},

  -- mason config
  {"williamboman/mason-lspconfig.nvim"},

  -- A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
  {"glepnir/lspsaga.nvim"},

  -- Treesitter configuration and abstraction  layer of newovim
  {'nvim-treesitter/nvim-treesitter'},

  {'MDeiml/tree-sitter-markdown'},

  -- icons
  {'nvim-tree/nvim-web-devicons'},

  -- telescope for fuzzy finder
  {'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { {'nvim-lua/plenary.nvim'}}},

  -- telescope file browser
  {"nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},

  {'nvim-telescope/telescope-fzf-native.nvim'},

  { "kelly-lin/telescope-ag", dependencies = { "nvim-telescope/telescope.nvim" }},

  ---- autopairs
  --use {
  --  "windwp/nvim-autopairs",
  --  config = function() require("nvim-autopairs").setup {} end
  --}

  {'mattn/emmet-vim'},

  -- coloring hashtag
  {'norcalli/nvim-colorizer.lua'},

  -- bufferline (tab)
  {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},

  -- git sign of change or remove
  {'lewis6991/gitsigns.nvim'},

  -- git
  {'dinhhuy258/git.nvim'},

  -- zen mode
  {'folke/zen-mode.nvim'},

  -- rubocop
  {'ngmy/vim-rubocop'},

  ---- markdown preview
  --use({
  --  "iamcco/markdown-preview.nvim",
  --  run = function() vim.fn["mkdp#util#install"]() end,
  --})

  -- rspec
  {'muhrizkiakbar/vim-rspec'},

  -- commenter
  {'preservim/nerdcommenter'},

  -- git blame
  {'f-person/git-blame.nvim'},

  -- surround
  {'tpope/vim-surround'},

  -- git conflict
  {'akinsho/git-conflict.nvim'},

  -- Testing Package
  { "nvim-neotest/neotest", dependencies = { "nvim-lua/plenary.nvim", "nvim-neotest/neotest-plenary", "nvim-neotest/neotest-vim-test", "olimorris/neotest-rspec", "nvim-neotest/neotest-go", "nvim-treesitter/nvim-treesitter", "antoinemadec/FixCursorHold.nvim", }},

  --DAP debugging js
  {'mfussenegger/nvim-dap'},
  {'mxsdev/nvim-dap-vscode-js'},
  {"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"}},

  -- Indent
  {"lukas-reineke/indent-blankline.nvim"},

  -- Test 
  {"vim-test/vim-test"},

  -- cmp NVIM
  {'hrsh7th/nvim-cmp'},

  -- Copilot
  {'Exafunction/codeium.vim', dependencies = { {'nvim-lua/plenary.nvim'},

  {'hrsh7th/nvim-cmp'}},
  -- Dashboard
  {'goolord/alpha-nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},

  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "solarized-osaka" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
