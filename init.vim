set guicursor=
set termguicolors
" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

" netrw
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_altv=1

autocmd BufRead,BufNewFile *.ms,*.me,*.mom set filetype=groff

let mapleader =" "

set nocompatible
set updatetime=50
set number relativenumber
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
"set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=3
set scrolloff=8
set expandtab
set clipboard+=unnamedplus
set nohlsearch
set shell=zsh
set backupskip=/tmp/*,/private/tmp/*

" Default value is clap
let g:dashboard_default_executive ='fzf'

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
set lazyredraw
set ignorecase
set smartcase
"set nocursorline
set nocursorcolumn
set lazyredraw
set synmaxcol=180 
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
" autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

set cursorline
"hi clear CursorLine
"
"hi CursorLineNR cterm=bold

" Set cursor line color on visual mode
" highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

"highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

"hi Pmenu         guibg=#242424 guifg=#ccccbc           ctermfg=251 ctermbg=235
"hi PmenuSel      guibg=#353a37 guifg=#ccdc90 gui=bold  ctermfg=187 ctermbg=236 cterm=bold

runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
endif

runtime ./maps.vim

set exrc

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

set colorcolumn=80

" Gruvbox

"hi Normal guibg=#000000
"hi Normal guibg=#181818
"hi! NonText ctermbg=NONE guibg=NONE

fun! SetGruvbox()
  let g:gruvbox_invert_selection='0'
  let g:gruvbox_contrast_dark = 'hard'
  colorscheme gruvbox
  highlight LineNr guifg=#5eacd3
  highlight CursorLineNr guifg=#5eacd3
  hi CursorLineNr    guibg=NONE
  hi CursorLine      guibg=NONE
  hi! Normal ctermbg=NONE guibg=NONE
  hi netrwDir guifg=#5eacd3

lua << EOF
require('lualine').setup {
  options = {
    theme = 'gruvbox-material'
    }
  }
EOF
endfun

fun! SetTokyonight()
  let g:tokyonight_style = "night"
  let g:tokyonight_transparent = 1
  let g:tokyonight_transparent_sidebar = 1
  
  let g:tokyonight_italic_comments = 0
  let g:tokyonight_italic_keywords = 0

  colorscheme tokyonight
  hi CursorLine guibg=NONE

lua << EOF
require('lualine').setup {
  options = {
    theme = 'tokyonight'
    }
  }
EOF
endfun

fun! SetSolarized()
colorscheme NeoSolarized

hi CursorLine guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE

lua << EOF
require('lualine').setup {
  options = {
    theme = 'solarized_dark'
    }
  }
EOF
endfun

call SetTokyonight()
"call SetGruvbox()
"call SetSolarized()
