"Basic settings
syntax on
set nu
set hlsearch
set incsearch
set textwidth=80

"Enable marker at 80th column
set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Enable CursorLine
set cursorline

"Default Colors for CursorLine
highlight  CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white

"Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine   cterm=NONE ctermbg=green ctermfg=white guibg=green guifg=white

"Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white

"Mulitple file browsing
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew

"C file settings
au FileType c setl sw=8 sts=8 ts=8 tw=0 wrapmargin=0 noexpandtab
set statusline=%t%m%r%h%w\ \ \ [BUF=%02n]\ \ \ [TYPE=%Y]\ \ \ [POS=%03l,%03c(%03v)][%03p%%]\ \ \ [LEN=%L]
set laststatus=2
set list
set listchars=tab:>-,trail:$,extends:#,nbsp:.
set wildmode=longest:full
set wildmenu
filetype plugin indent on
au FileType c setl sw=8 sts=8 ts=8 tw=0 wrapmargin=0 noexpandtab
