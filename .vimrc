filetype plugin indent on

set t_Co=256
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set encoding=utf-8
set hlsearch
set ignorecase
set nowrap
set modifiable
set hidden
set showcmd
set cursorline
set splitbelow
set splitright
set modeline
set ls=2
set virtualedit=block
set wildmode=longest,list
set linebreak

syntax on
highlight clear SignColumn
retab
autocmd BufWritePre * :%s/\s\+$//e

nnoremap <Tab>       i<Tab>
vnoremap <Tab>       i<Tab>
nnoremap <Space>     i<Space>
vnoremap <Space>     i<Space>
nnoremap <Enter>     i<Enter>
nnoremap <BS>        i<BS>
inoremap jk          <Esc>
inoremap JK          <Esc>
nnoremap JK          <Esc>
map      q:          :q
nnoremap <F1>        <nop>
nnoremap q           <nop>
nnoremap Q           <nop>
nnoremap <C-J>       <C-W><C-J>
nnoremap <C-K>       <C-W><C-K>
nnoremap <C-L>       <C-W><C-L>
nnoremap <C-H>       <C-W><C-H>
map      <silent> w  <Plug>CamelCaseMotion_w
map      <silent> b  <Plug>CamelCaseMotion_b
map      <silent> e  <Plug>CamelCaseMotion_e
map      <silent> ge <Plug>CamelCaseMotion_ge
sunmap   w
sunmap   b
sunmap   e
sunmap   ge
