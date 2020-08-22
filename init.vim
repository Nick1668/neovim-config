language en_US.utf8

call plug#begin('~/.config/nvim/plugged')

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rust-lang/rust.vim'
"Plug 'lervag/vimtex'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'

" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'arcticicestudio/nord-vim'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'joshdick/onedark.vim'

call plug#end()

autocmd FileType json setlocal commentstring=//\ %s

autocmd FileType rust call SetRustOptions()

function SetRustOptions()
    command! Dignore :g/#\[ignore\]/d
endfunction

autocmd Filetype cpp call SetCppOptions()

function SetCppOptions()
    autocmd Filetype cpp setlocal makeprg=g++\ %
    setlocal commentstring=//\ %s
endfunction

autocmd FileType latex call SetLatexOptions()

function SetLatexOptions()
    setlocal tabstop=2 
    setlocal shiftwidth=2 
    setlocal softtabstop=2
endfunction

" airline
" let g:airline_extensions = ['coc']
" let g:airline_theme = "palenight"
" let g:airline_theme='purify'
" let g:airline_theme='onedark'

set noshowmode
set showtabline=2
set laststatus=2
" set notimeout
set fileencoding=utf-8
set encoding=utf-8
set smarttab
set smartindent
set cursorline
set mouse=a
set nowrap
set termguicolors
set background=dark
syntax on
filetype on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number relativenumber
set splitbelow
set splitright
colorscheme nord
" hi Normal guibg=NONE ctermbg=NONE

command! -nargs=0 W :w
command! -nargs=0 Q :q
command! -nargs=0 Reload :source $HOME/.config/nvim/init.vim

" LATEX
"let g:tex_flavor = 'latex'
"let g:vimtex_compiler_options =  "-pdf -pdflatex='pdflatex -verbose -file-line-error -shell-escape -synctex=1'"
"let g:vimtex_view_method = 'zathura'
"
"let g:vimtex_compiler_progname = 'nvr'
"set conceallevel=1
"let g:tex_conceal='abdmg'

" ULTISNIPPETS
"let g:UltiSnipsExpandTrigger = 'C-<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" CPP
" highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error=1

source $HOME/.config/nvim/plug-config/keys.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/airline.vim

let g:floaterm_wintype='normal'
let g:floaterm_height=0.3

" auto clode coc explorer
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" auto clode floaterm
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'floaterm') | q | endif

let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-marketplace',
    \ 'coc-vimlsp',
    \ 'coc-rls',
    \ 'coc-rust-analyzer',
    \ 'coc-cmake',
    \ 'coc-json',
\ ]
