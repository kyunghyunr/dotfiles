call plug#begin()
	
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

call plug#end()

" true color
  "use moonlight
  let g:neosolarized_termtrans=1
  runtime ./colors/moonlight.vim
  colorscheme moonlight
