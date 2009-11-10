set ruler
set nocompatible
set bs=2
"set number
"set wrap!
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
filetype indent on
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga
map <C-\> :NERDTreeToggle<CR>
map <C-n> :FuzzyFinderFile<CR>
set incsearch
set ignorecase
set smartcase
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
"colorscheme desert
colorscheme vividchalk
syntax enable
set bufhidden=hide
set scrolloff=3
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
source ~/.vim/autotag.vim
"fix grep
:let Grep_Find_Use_Xargs = 0
:let Grep_Default_Filelist = '*.rb'
