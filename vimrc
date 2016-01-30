
"""""""
" VIMRC
"""""""
" Q: What do you call a parrot in a raincoat?
" A: Polyunsaturated

set nocompatible              " be iMproved, required
filetype off                  " required
" Disable the godoc thing, it interferes with 'K'
let g:go_doc_keywordprg_enabled = 0

" OCaml merlin stuff
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" This can be useful
Plugin 'fatih/vim-go'

" ctags tagbar
Plugin 'majutsushi/tagbar'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" NerdTree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Easytag shit
Plugin 'xolox/vim-easytags'

" Something to do with easytags
Plugin 'xolox/vim-misc'

" js indenting stuff
Plugin 'pangloss/vim-javascript'

" js linting
Plugin 'Shutnik/jshint2.vim'

" YCM
Plugin 'Valloric/YouCompleteMe'

" Lucius color
Plugin 'jonathanfilip/vim-lucius'

" a better status line
Plugin 'bling/vim-airline'

" git
Plugin 'tpope/vim-fugitive'

" hex mode
Plugin 'fidian/hexmode'

" CSV
Plugin 'chrisbra/csv.vim'

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

" Turn on proper column block visual selection
set ve+=block

" Syntax Highlighting
syntax on

" Backspace is best when not limited to what has just been written
set backspace=indent,eol,start

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

" character greps 
command! -nargs=+ -complete=file -bar Ag  silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

set backupdir=$HOME/.vim/backups

" do syntax highlighting the slow way, corrects poor highlighting in HTML files
autocmd BufEnter * :syntax sync minlines=200
" pesky rappers
set nowrap

" Replace select text , ctrl-r in vis mode
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" tab stuff
set tabstop=4
set shiftwidth=4
set expandtab

" local vim settings
set exrc
set secure "important

" turn on scroll support
set mouse=a
set ttymouse=xterm2

"i just don't understand why this would be disabled in vim-go by default... :/
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_commands = "goimports"

" color scheme, keep in mind i use a mac with my screen colours inverted
colorscheme lucius
LuciusWhiteHighContrast

" CDC = Change to Directory to Current file
command! CDC cd %:p:h

"vim status line always
set laststatus=2

" he told me to do it...
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"

" 99% of the time i want to save & quit all or save all
nnoremap <Leader>w :wa<CR>
nnoremap <Leader>q :q<CR> 
nnoremap <Leader>a :wqa<CR> 

" set current working directory to current file (and print it)
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Vim-Go Go to definition
nmap <Leader>g :GoDef<CR>
nmap <Leader>b :GoBuild<CR>
nmap <Leader>t :GoTest<CR>
nmap <Leader>l :GoLint<CR>

" Copy and paste from clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" set tab to switch windows
map <Tab> <C-W>W
