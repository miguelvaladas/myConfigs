set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
" set virtualedit=onemore
" inoremap <Esc> <Esc>`^

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'vim-scripts/AutoComplPop'
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'maxmellon/vim-jsx-pretty' "jsx colorschemes
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set encoding=UTF-8
let g:vim_jsx_pretty_colorful_config = 1 " default 0


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

set completeopt-=preview " For No Previews


syntax on
set t_Co=256
set background=dark
let g:gruvbox_bold=2
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_theme='base16'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
