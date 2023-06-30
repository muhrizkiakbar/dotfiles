-- OSX stupid backspace fix
filetype plugin on
syntax enable
syntax on

filetype plugin indent on    " required

vim.wo.backspace = indent, eol, start
vim.wo.compatible = false
vim.wo.wrap = false
vim.wo.encoding = utf8
vim.wo.swapfile = false
vim.wo.mouse = false
vim.wo.updatetime = false
