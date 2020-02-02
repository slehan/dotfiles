" editor tings
set number                     " turn line numbers on
set showcmd                    " show the last command in the bottom
set cursorline                 " highlights the line you're on when editing
filetype indent on             " turns on filetype specific indentation
syntax on                      " syntax highlighting is a must
set lazyredraw                 " only redraws the vim screen if necessary
set showmatch                  " show the matching paren/brace
set foldenable                 " turn on text folding (https://vim.fandom.com/wiki/Folding)
set foldlevelstart=10          " start with most folded code open
set foldnestmax=10             " only allow 10 nested folds max
set foldmethod=syntax          " set the foldmethod to be syntax based
set backspace=indent,eol,start " make backspace behave like other programs
set ruler                      " show line/col info in the bottom

" search tings
set incsearch " search as we're typing
set hlsearch  " highlight search results as they're found
" the below remap will set ,<space> to run :nohlsearch which will turn off the current highlights
nnoremap <leader><space> :nohlsearch<CR>


" tab tings
set tabstop=4     " number of visual spaces per tab
set softtabstop=4 " number of spaces input when hitting the tab key
set expandtab     " tabs are spaces

