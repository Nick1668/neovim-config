let mapleader = " "
let maplocalleader = " "

" Use ESC to exit insert mode in :term
tnoremap <silent> <Esc> <C-\><C-n>

" WINDOWS
nnoremap <silent> <C-H> <C-W>h
nnoremap <silent> <C-J> <C-W>j
nnoremap <silent> <C-K> <C-W>k
nnoremap <silent> <C-L> <C-W>l

nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

nnoremap <leader>ww :Windows<CR>
nnoremap <leader>wv :vs %<CR>
nnoremap <leader>ws :sp %<CR>
nnoremap <leader>wd :q<CR>

" OPEN
" nnoremap <leader>ot :terminal<CR>
nnoremap <silent> <leader>op :CocCommand explorer<CR>

" FILES
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>fS :wa<CR>
nnoremap <leader>fc :e $HOME/.config/nvim/init.vim<CR>

" BUFFERS
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :w<CR>:bdelete!<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bs :w<CR>
nnoremap <leader>bS :wa<CR>
nnoremap <leader>bN :enew<CR>

" SEARCHING
nnoremap <leader>ss :BLines<CR>
nnoremap <leader>sf :Files<CR>

" TOGGLES
nnoremap <silent> <leader>tt :FloatermToggle<CR>
nnoremap <leader>tl :set nu!<CR>
nnoremap <leader>tw :set wrap!<CR>

" QUIT
nnoremap <leader>qq :qa<CR>

" CODE
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <leader>ce :Errors<CR>
nnoremap <leader>cf :Format<CR>
nnoremap <leader>cd <Plug>(coc-definition)
nnoremap <leader>ci <Plug>(coc-implementation)
nnoremap <leader>cr <Plug>(coc-rename)

" HELP
nnoremap <leader>ht :Colors<CR>
nnoremap <leader>hk :Maps<CR>
