"visual stuff
set ruler
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
syntax enable
"set number
"set wrap!

"use different colorscheme for mac vim and console vim
if has('gui_running')
  colorscheme vividchalk
else
  colorscheme desert256
endif 

"2 spaces per tab
set bs=2
set tabstop=2
set shiftwidth=2

"do the right thing with tabs
set smartindent
set expandtab
filetype indent on

"keymapping
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga
map <C-\> :NERDTreeFind<CR>
map <C-n> :FufFile **/<CR>
map <C-e> :MRU<CR>

"search
set incsearch
set ignorecase

"misc
set smartcase
set nocompatible
set bufhidden=hide
set scrolloff=3
source ~/.vim/autotag.vim

"fix grep
:let Grep_Find_Use_Xargs = 0
:let Grep_Default_Filelist = '*.rb'

"map camelcasemotion replacements to w,b,e so they are camelcase and _ aware
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
