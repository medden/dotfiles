set nocompatible
set laststatus=2
"key mappins
let mapleader = ","
nnoremap ; :

set number
nmap <leader>n :set number!<CR>
nmap <Space> <PageDown>
nmap ; :
map <Tab> 6

nnoremap <leader>r :.w !bash<CR>

set nowrap
"set path+=**

set autowrite
set scrolloff=10

"set number relativenumber

nmap <F12> :bn<CR>
nmap <F10> :bp<CR>
nmap <F7> :cn<CR>
nmap <F8> :cp<CR>
filetype plugin indent on

"line break from this point  CTRL-i
nmap <C-i> i<cr><Esc>

set nomore
syntax on
set mouse=a
"search highlights
set hlsearch
set incsearch
"clear highlight CTRL+/
nmap  :noh<CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent



"nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>v :edit ~/dotfiles/vim.vim<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

set history=10000
nmap <leader>o :NERDTreeToggle<CR>
nmap <leader>t :term<CR>


"fzf stuff

nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>


set rtp+=~/.fzf
"vim-plug
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nelsyeung/twig.vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
"Plug '~/.fzf'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'othree/xml.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()


nmap <leader>p :PlugInstall!<CR>
