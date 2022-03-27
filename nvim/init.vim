" CocInstall for coc plugins
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-sandwich'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'josa42/vim-lightline-coc'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
set encoding=UTF-8
set clipboard+=unnamedplus

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" coc.nvim suggestions
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

set termguicolors
colorscheme gruvbox
hi Normal ctermbg=NONE guibg=NONE

" barbar
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>

" coc
nmap <Leader>e <Cmd>CocCommand explorer<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" ripgrep dependency
nnoremap <leader>fg <cmd>Telescope live_grep<cr> 
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

source ~/.vimrc
