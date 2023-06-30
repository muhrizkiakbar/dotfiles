
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'fatih/vim-go'
end)
