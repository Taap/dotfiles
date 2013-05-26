set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmark/vundle'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-syntax'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on
set helplang=ja

"Keybind
"Insert mode
imap <C-u> <esc>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>
imap <C-j> <Down>
imap <C-a> <HOME>
imap <C-e> <END>


"normal mode
nmap nt :NERDTreeToggle


"Display
set number
set cursorline
set notitle
set list
set listchars=tab:»-,trail:~

let loaded_matchparen = 1

"status bar
set laststatus=2

"file
set noswapfile
set nobackup
filetype plugin on
au BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4

"color
syntax enable
colorscheme murphy
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark

"powerline
let g:Powerline_symbols='fancy'
set t_Co=256 

"encoding
set encoding=utf-8


"Copy$Paste
set clipboard=unnamed,autoselect
map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 
map <silent> sP :call YanktmpPaste_P()<CR> 

"tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END
