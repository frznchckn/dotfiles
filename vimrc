set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

let git_url = 'git@gitlab.com'
let git_usr = 'frznchckn'
let git_repo_root = git_url.':'.git_usr

call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin git_repo_root.'/Vundle.vim'
" " Keep Plugin commands between vundle#begin/end.
Plugin git_repo_root.'/comments.vim'
Plugin git_repo_root.'/Colour-Sampler-Pack'
Plugin git_repo_root.'/jedi-vim'
Plugin git_repo_root.'/ScrollColors'
Plugin git_repo_root.'/supertab'
" Track the engine.
Plugin git_repo_root.'/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin git_repo_root.'/vim-snippets'
"
" Plugin 'tpope/vim-fugitive'
"Plugin 'roxma/nvim-completion-manager'
" Plugin 'L9'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set nocompatible

if has("win32") || has("win64")
    set directory=$TMP
    set backupdir=C:\temp\vimtmp,/tmp
else
    set directory=/tmp
end 


set autoindent
set smartindent
set showmatch
"colorscheme torte
"colorscheme clarity
colorscheme asu1dark
set guioptions-=l
set guioptions-=r
set guioptions-=b
set incsearch
"set guifont=Lucida_Typewriter:h9
syntax on
set number
set ruler
set nowrap
augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
    autocmd BufEnter * match OverLength /\%81v.*/
augroup END

let mapleader = ","

inoremap <leader>a <ESC>
inoremap jk <ESC>

inoremap <C-n> <DOWN>
inoremap <C-P> <UP>
map <leader>c <C-c>
map <leader>x <C-x>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"set vb
" Highly recommended to set tab keys to 4 spaces
set tabstop=4
"set softtabstop=4
set shiftwidth=4 expandtab
set shiftround
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
set guioptions=
set guioptions+=m


":filetype plugin on

let g:snippets_dir = '/home/rfriesen/.vim/bundle/snipmate.vim/snippets'

autocmd BufNewFile,BufRead *.tex setlocal spell

augroup filetypedetect
au BufNewFile,BufRead *.sv      setf systemverilog
augroup END 

let g:snips_author = 'R. Friesenhahn'


set guifont=Monospace\ 10
cd $HOME
