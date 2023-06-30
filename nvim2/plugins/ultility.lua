vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Utility
  use 'scrooloose/nerdcommenter'
  use 'preservim/nerdtree'
  use 'chxuan/tagbar'
  use 'BufOnly.vim'
  use 'wesq3/vim-windowswap' -- move or switch buffer to other window
  use 'terryma/vim-multiple-cursors'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'
  use 'godlygeek/tabular' -- for create table view in markdown
  use 'benmills/vimux' -- friendly with tmux
  use 'tpope/vim-surround'
  use 'jlanzarotta/bufexplorer'
  use 'mattn/emmet-vim'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'maksimr/vim-jsbeautify'
  use 'tweekmonster/startuptime.vim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use 'somini/vim-autoclose' -- automate create closing symbol
  use 'tomtom/tcomment_vim' -- commenting line
  use 'vim-syntastic/syntastic' -- syntax report in bottom bar but not setup yet

  use 'reedes/vim-pencil' -- good plugin wrapping words
  use 'dpelle/vim-languagetool' -- checking grammar for commit message
  use 'vimwiki/vimwiki' -- create documentation about projects for me

  use 'tpope/vim-fugitive' -- Git merge git push git pull
  use 'jreybert/vimagit' -- Only doing stash and commit
  use 'airblade/vim-gitgutter' -- show diff (added change or deleted)
  use 'sodapopcan/vim-twiggy' -- switch branch

end)

