syntax on
set hlsearch
set nu
set ruler
set incsearch
set mouse=a
set virtualedit=all

au BufRead,BufNewFile *xensource.log* set filetype=messages

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine   cterm=NONE ctermbg=green ctermfg=white guibg=green guifg=white

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white

" Set different cursos line in insert mode
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a gray cursor otherwise
    let &t_EI = "\<Esc>]12;gray\x7"
    silent !echo -ne "\033]12;gray\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal
endif
" }}}

" Disable the visual mode when text is selected with the mouse

set mouse-=a


"hi Search guifg=black guibg=#C6C5FE gui=BOLD ctermfg=black ctermbg=cyan cterm=BOLD

" From John Else
 " From John Else
au FileType ocaml setl sw=2 sts=2 ts=2 tw=0 wrapmargin=0 noexpandtab
set statusline=%t%m%r%h%w\ \ \ [BUF=%02n]\ \ \ [TYPE=%Y]\ \ \ [POS=%03l,%03c(%03v)][%03p%%]\ \ \ [LEN=%L]
set laststatus=2
set list
set listchars=tab:>^,trail:$,extends:#,nbsp:.
set pastetoggle=<F2>
set hls
set incsearch
set list
"set listchars=tab:.ârail:âol:$
"set listchars=tab:â,trail:â24
set wildmode=longest:full
set wildmenu
filetype plugin indent on
au FileType ocaml setl sw=2 sts=2 ts=2 tw=0 wrapmargin=0 noexpandtab

" ravi's additional settings
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew

" ravi'settings for C files
au FileType c setl sw=4 sts=4 ts=4 expandtab

"ravi's additional setting for 80 characater marker
set cc=80
