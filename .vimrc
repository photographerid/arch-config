set number
set relativenumber
execute pathogen#infect()
syntax on
filetype plugin on
filetype plugin indent on
set autoindent
set clipboard=unnamedplus
set list lcs=tab:\|\ 
colorscheme wal

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap $ $$<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
