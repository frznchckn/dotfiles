
" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

set nocompatible

if has("win32") || has("win64")
   set directory=$TMP
   set backupdir=C:\temp\vimtmp,/tmp
else
   set directory=/tmp
end 


"set autoindent
"set smartindent
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

imap <M-a> <ESC>
imap <C-n> <DOWN>
imap <C-P> <UP>
map <M-c> <C-c>
map <M-x> <C-x>
map <M-u> 80<C-w> |
"set vb
" Highly recommended to set tab keys to 4 spaces
set tabstop=2
"set softtabstop=4
set shiftwidth=2 expandtab
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
set guioptions=
set guioptions+=m


":filetype plugin on

let g:snippets_dir = '/home/rfriesen/.vim/bundle/snipmate.vim/snippets'
"source $HOME/vimfiles/plugin/comments.vim
"source $HOME/vimfiles/plugin/sessionman.vim
"source $HOME/vimfiles/plugin/snipMate.vim
"source $HOME/.vim/plugin/comments.vim
"source $HOME/.vim/plugin/sessionman.vim
"source $HOME/.vim/plugin/snipMate.vim

augroup filetypedetect
au BufNewFile,BufRead *.sv      setf systemverilog
augroup END 

"source $HOME/vim-addons/plugin/comp.vim 
     " fun ActivateAddons()
      "    set runtimepath+=~/vim-addons/vim-addon-manager
       "   try
        "    call scriptmanager#Activate([])
         " catch /.*/
          "  echoe v:exception
         " endtry
        "endf
        "call ActivateAddons()
"call scriptmanager#Install(["vimcompcrtr"])
let g:snips_author = 'R. Friesenhahn'


set guifont=Monospace\ 10
cd $HOME
