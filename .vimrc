

"+++++++++++++++++++++++ Part of Vundle plugin instalation ++++++++++++++++++++++++++++
" In case of transfering the settins use 4 following commands to install the
" plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a .git extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Python plugin. Gives PyLint, Rope, Pydoc, breakpoints from the box.
Plugin 'klen/python-mode'

" Plugin for writing html code fast
Plugin 'mattn/emmet-vim'

" well known colorsheme
Plugin 'tomasr/molokai'

" well known colorsheme
" us the following to activate it:     :colorsheme solarized
Plugin 'altercation/vim-colors-solarized'

" well known search plugin ctrl+P
Plugin 'kien/ctrlp.vim'

"Powerline plugin
Plugin 'Lokaltog/vim-powerline' "old and not supported powerline
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes' "themes for air-powerline

" all of the plugins must end before the following line
call vundle#end()   " required

" Now we can turn our filetype functionality back on
filetype plugin indent on  " required

" +++++++++++++++++++ End of Vundle plugin instalation part +++++++++++++++++++++++++++





"====very good advices on vimrc ==== http://dougblack.io/words/a-good-vimrc.html#colors =====

"============= http://www.fullstackpython.com/vim.html =============================

" enable syntax highlighting. Without it colorshemes cant have colors
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces. converts tabs to spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" load filetype-specific indent files
filetype indent on


" rebind <Leader> key to comma
let mapleader = ","

" choose the version of python for python-mode to use
let g:pymode_python = "python3" " options are python and python3

" visual autocomplete for command menu when pres <tab>
set wildmenu

"remaps jk to act as <Esc> in insert mode
"LEAVE AN EMPTY LINE AFTER THE FOLLOWING COMMAND
:imap jk <Esc>

" enabling full colors on linux gnome terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" seting the default colorscheme
colorscheme molokai
let g:molokai_original = 1

"opens up the Nerdtree after pressing control + n
map <C-n> :NERDTreeToggle<CR>


"disable vi-compatibility
set nocompatible 

"always show the statusline
set laststatus=2

"necessary to show Unicode glyphs
set encoding=utf-8


"================================================================






"============= vim split pane navigation and settings ===========

"chagnes navigation betweend panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"sets new panes opening sides
set splitbelow
set splitright

"=================================================================




" automaticly relode .vimrc files after doing changes and saving
"autocmd! bufwritepost .vimrc source %
" to fix the problem with colors after change
"if has("autocmd")
"      autocmd! BufWritePost .vimrc source $MYVIMRC
" This fixes the color changes and things not working :D
" autocmd! BufWritePost .vimrc filetype plugin indent on
"endif


" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" enabling mouse
set mouse=a  "on OSX press alt and click

" makes it easy to move blocks of code multiple times without loosing
" selection
vnoremap < <gv 
vnoremap > >gv



























"============= <Leader> commands =======================


" makes it easier to navigate between tabs
map <leader>m <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>

" opens vimrc file for editing with leader +ev shortcut
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" If saved this way changes will take effect imediately
:nnoremap <leader>sv :source $MYVIMRC<cr>

