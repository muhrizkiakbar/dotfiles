vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'AnsiEsc.vim'
  use 'ryanoasis/vim-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'sjl/badwolf'
  use 'tomasr/molokai'
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'dracula/vim'
  use 'junegunn/limelight.vim'
  use 'mkarmona/colorsbox'
  use 'romainl/Apprentice'
  use 'Lokaltog/vim-distinguished'
  use 'chriskempson/base16-vim'
  use 'w0ng/vim-hybrid'
  use 'AlessandroYorba/Sierra'
  use 'daylerees/colour-schemes'
  use 'effkay/argonaut.vim'
  use 'ajh17/spacegray.vim'
  use 'atelierbram/Base2Tone-vim'
  use 'colepeters/spacemacs-theme.vim'
  use 'micha/vim-colors-solarized'
  use 'rigellute/shades-of-purple.vim'
  use 'NLKNguyen/papercolor-theme'
  use 'arcticicestudio/nord-vim'
  use 'lukas-reineke/indent-blankline.nvim'
end)
