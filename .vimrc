try
    call pathogen#runtime_append_all_bundles() 
endtry
set autoindent
set fileencodings=utf-8,cp1251,default
if has("gui_running")
    if has("win32")
        try
            set guifont=Terminus:h14:cRUSSIAN
        catch
            set guifont=Courier_New:h14:cRUSSIAN
        endtry
    else
        try
            set guifont=Terminus\ 14
        catch
            set guifont=Monospace\ 14
        endtry
    endif

    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set t_Co=256

    try
        colorscheme solarized
        set background=light
    catch
        colorscheme desert
    endtry
else
    colorscheme desert
endif

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
let mapleader=','


ino <S-Space> <Esc>
nmap <c-s> :w<cr>
vmap <c-s> <esc>:w<cr>i
imap <c-s> <esc>:w<cr>i
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
nmap <c-q> :confirm q<cr>
vmap <c-q> <esc>:confirm q<cr>i
imap <c-q> <esc>:confirm q<cr>i
nmap <F10> :confirm q<cr>
vmap <F10> <esc>:confirm q<cr>i
imap <F10> <esc>:confirm q<cr>i
nmap <c-p> "_ditP
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

nmap <c-cr> :JavaCorrect<cr>
imap <c-cr> <esc>:JavaCorrect<cr>i

" Supertab settings
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>", "&completefunc:<c-x><c-u>"]
let g:SuperTabLongestHighlight = 1
imap <c-space> <c-x><c-o>

set number
if has('win32')
    set clipboard=unnamed
    nmap yp :let @* = expand("%:p")<CR>
else
    set clipboard=unnamedplus
    nmap yp :let @+ = expand("%:p")<CR>
endif

syntax on


map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
