call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'NLKNguyen/papercolor-theme'
Plug 'airblade/vim-rooter'
Plug 'dyng/ctrlsf.vim'
Plug 'ervandew/supertab'
Plug 'fisadev/vim-isort'
Plug 'jlanzarotta/bufexplorer'
" Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
" Plug 'lotabout/skim.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mcchrish/nnn.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/yaifa.vim'
Plug 'w0rp/ale'
Plug 'yueyoum/vim-linemovement'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'

"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-python/python-syntax'

call plug#end()

syntax on
set hlsearch
set ignorecase
set incsearch
set mouse=n
set number
set smartcase
" Tabs are spaces
set cursorline
set expandtab
set virtualedit=all

"colorscheme PaperColor
colorscheme gruvbox

" html tags
autocmd FileType html let b:match_words = '<\(\w\w*\):</\1,{:}'
autocmd FileType xhtml let b:match_words = '<\(\w\w*\):</\1,{:}'
autocmd FileType xhtml let b:match_words = '<\(\w\w*\):</\1,{:}'

" Set up python env
" let g:loaded_python_provider = 0
" let g:loaded_python3_provider = 0
let g:python3_host_prog = '/Users/fpv/.pyenv/versions/neovim/bin/python'

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" extra space for nerdcommenter
let NERDSpaceDelims = 1

let g:ale_virtualenv_dir_names = []
let g:ale_python_autopep8_executable = '/Users/fpv/.pyenv/versions/neovim/bin/autopep8'
let g:ale_python_black_executable = '/Users/fpv/.pyenv/versions/neovim/bin/black'
let g:ale_python_black_options = '-l 79 --skip-string-normalization'
" let g:ale_python_black_options = '-l 79'
let g:ale_python_flake8_executable = '/Users/fpv/.pyenv/versions/neovim/bin/flake8'
let g:ale_python_pylint_executable = '/Users/fpv/.pyenv/versions/neovim/bin/pylint'
let g:ale_python_pylint_options = '--disable=import-error,missing-docstring,too-few-public-methods'

let g:ale_html_prettier_options = '--parser vue'

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\    'python': ['black'],
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

let g:deoplete#enable_at_startup = 1
let g:gutentags_cache_dir = '/Users/fpv/.cache/gutentags'
let g:gutentags_ctags_exclude = ['node_modules', '.git', 'coverage', '.venv']

let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = 0
let g:jedi#goto_stubs_command = ""
let g:jedi#usages_command = ""

let g:nnn#command = 'nnn'
" Opens the nnn window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.
" Or pass a dictionary with window size
" let g:nnn#layout = { 'left': '~20%' } " or right, up, down
" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

let g:rooter_manual_only = 1

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_auto_focus = {
    \ "at": "start"
\ }

let g:fzf_preview_window = ''

" do not jump to next selection
nnoremap * *``
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>a :Rg<CR>
nnoremap <leader>rd :Rooter<CR>
nnoremap <leader>af :ALEFix<CR>
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>ad :ALEDetail<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

nnoremap <Tab> <C-w>w

nnoremap <leader>v :vs<CR>
vnoremap <leader>v :vs<CR>

nnoremap <leader>e <Esc>:BufExplorer<cr>
vnoremap <leader>e <esc>:BufExplorer<cr>

" isort
let g:vim_isort_map = '<C-i>'

" CTRLF plugin
nmap <C-F> <Plug>CtrlSFPrompt
vmap <C-F> <Plug>CtrlSFVwordExec
nmap <C-F>n <Plug>CtrlSFCwordPath

" Save
nnoremap <leader>s <ESC>:w<CR>
vnoremap <leader>s <ESC>:w<CR>
inoremap <leader>s <ESC>:w<CR>

" Quit
noremap <leader>q <Esc>:q<cr>
vnoremap <leader>q <Esc>:q<cr>
