
"""""""
" VIMRC
"""""""
" Q: What do you call a parrot in a raincoat?
" A: Polyunsaturated

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
  
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" This can be useful
Plugin 'fatih/vim-go'

" ctags tagbar
Plugin 'majutsushi/tagbar'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" Easytag shit
Plugin 'xolox/vim-easytags'

" Something to do with easytags
Plugin 'xolox/vim-misc'

" Vim session management
Plugin 'xolox/vim-session'

call vundle#end()            " required
filetype plugin indent on    " required

" Line numbers
set nu

" Pointless in the age of git
"set nobackup
"set noswapfile
"set nowb

" Shortcut for getting out of insert
:imap jk <Esc>

" Sets how many lines vim'll remember
set history=500

" I wonder where the cursor gets to ALL the time 
set ruler

" Set line endings to unix
set ff=unix

" Highlight all search matches
set hlsearch

" Syntax Highlighting
syntax on

" Backspace is best when not limited to what has just been written
set backspace=indent,eol,start

"clipboard stuff
"set clipboard=unnamed

" Enable syntax highlighting for .md files
au BufRead,BufNewFile *.md set filetype=markdown

" turn ctags on
nmap tb :TagbarToggle<CR>

" turn on nerdtree
nmap nt :NERDTreeToggle<CR>

" ctags bullshit
set tags=./tags;

" Use the silver surfer
set grepprg=ag

" bind K to grep word under cursor
nmap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" \ character greps 
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set backupdir=$HOME/.vim/backups

let g:session_autoload='yes'
let g:session_autosave='yes'
