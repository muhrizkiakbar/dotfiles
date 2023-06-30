
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'ngmy/vim-rubocop'
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'tpope/vim-rbenv'
  use 'tpope/vim-bundler'
  use 'muhrizkiakbar/vim-rspec'
end)
