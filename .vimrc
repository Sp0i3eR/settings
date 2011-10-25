call pathogen#runtime_append_all_bundles() 

set autoindent
set fileencodings=utf-8,cp1251,default
set guifont=Terminus\ 14
set guioptions-=T
set guioptions-=m
set guioptions-=r
set termencoding=utf-8
set window=29
set wildmode=longest,list
set scrolloff=2
set showmatch
set nowrap
set lz
set ttyfast
set complete-=i

set softtabstop=4
set expandtab
set shiftwidth=4


vmap <c-f> !xmllint --format -<CR>
nmap <c-f> ggVG!xmllint --format -<CR>
imap <c-f> <esc>ggVG!xmllint --format -<CR>i

command W w !sudo tee % > /dev/null
ino <S-Space> <Esc>
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>
nmap <F2> :w<cr>
nmap <S-F2> :W<cr>
vmap <F2> <esc>:w<cr>i
vmap <S-F2> <esc>:W<cr>i
imap <F2> <esc>:w<cr>i
imap <S-F2> <esc>:W<cr>i
nmap <F10> :q!<cr>
vmap <F10> <esc>:q!<cr>i
imap <F10> <esc>:q!<cr>i
map <c-z> <c-o>u

nmap <silent> <C-t> :tabnew<CR>
nmap <silent> <C-j> gT
nmap <silent> <C-k> gt
nmap <silent> <C-h> :tabfirst<CR>
nmap <silent> <C-l> :tablast<CR>
nmap <silent> <leader>ta <Esc>:tab ball<CR>

nmap <c-down> <c-w>w
nmap <c-up> <c-w>W
nmap <c-left> <c-w>h
nmap <c-right> <c-w>l

colors desert
set number

