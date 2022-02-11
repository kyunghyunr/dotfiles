:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set foldmethod=marker
:set encoding=UTF-8
:set completeopt-=preview " For No Previews
" :set mouse=a	

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
"------------------------------

call plug#begin()
	
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation  'brew install ctags'
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'mattn/emmet-vim' " html auto tag
Plug 'https://github.com/Yggdroot/indentLine.git' " ident guides
Plug 'prettier/vim-prettier' 

call plug#end()

"nerdTree set
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"tagbar set
nmap <F8> :TagbarToggle<CR>

" emmet set
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" prettier set
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" coc
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
"CocInstall coc-css
"Cocinstall coc-html
"Cocinstall coc-json
"Cocinstall coc-tsserver
"CocInstall coc-sql
"CocInstall coc-scssmodules

" true color
  "use moonlight
  let g:moonlight_termtrans=1
  runtime ./colors/moonlight.vim
  colorscheme moonlight
