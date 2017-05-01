" Be better
set nocompatible

" Load Vundle plugins
filetype off
" Windows version
" set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
" call vundle#begin('$HOME/vimfiles/bundle/')
" Non-Windows version
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'hashivim/vim-consul'
Plugin 'hashivim/vim-packer'
Plugin 'PProvost/vim-ps1'
Plugin 'rodjek/vim-puppet'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-vagrant'
Plugin 'hashivim/vim-vaultproject'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" Settings
colorscheme jellybeans
set ts=4
set nowrap
set nobackup
set number
syntax on
filetype plugin indent on

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline configuration
let g:airline_theme='jellybeans'

if !has("gui_running")
  " Set non-gui version to display color properly
  set term=xterm
  set t_Co=256
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"

  " Fix for backspace key to delete left instead of right in ConEmu
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
endif
