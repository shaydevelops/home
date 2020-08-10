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
set background=dark
set hidden
set showcmd
set cursorline
"set wildmenu
"set showmatch
"set incsearch
"set undofile

" If fzf is installed using Homebrew
set rtp+=/usr/local/opt/fzf

" more natural split panes
" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
set splitbelow
set splitright

" show filename
set modeline
set ls=2

"  move into blank space in visual block mode
set virtualedit=block

" shell style autocomplete
"set wildmode=longest,list

syntax on
colorscheme spacegray

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" make git gutter same colour as the line number column
highlight clear SignColumn
"highlight Normal ctermbg=black

" Convert tabs to spaces on file read
retab

" strip whitespace on save
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e
set linebreak

" Show fzf file search pane
map ; :Files<Enter>

" Switch modes easily
nnoremap <Tab>      i<Tab>
vnoremap <Tab>      i<Tab>
nnoremap <Space>    i<Space>
vnoremap <Space>    i<Space>
nnoremap <Enter>    i<Enter>
nnoremap <BS>       i<BS>
inoremap jk         <Esc>
inoremap JK         <Esc>
nnoremap JK         <Esc>
nnoremap qq         :q!<Enter>
nnoremap QQ         :q!<Enter>
nnoremap wq         :wq<Enter>
nnoremap WQ         :wq<Enter>
inoremap wq         :wq<Enter>
inoremap WQ         :wq<Enter>
nnoremap zz         :w<Enter>

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" Stop that stupid window from popping up
map      q:         :q

nnoremap <F1>       <nop>
nnoremap q          <nop>
nnoremap Q          <nop>

" Mappings for camelcasemotion
" http://tilvim.com/2013/12/20/camelcase.html (dead link)
" https://web.archive.org/web/20150323012305/http://tilvim.com/2013/12/20/camelcase.html
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" vim-go settings
" https://tpaschalis.github.io/vim-go-setup/
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
