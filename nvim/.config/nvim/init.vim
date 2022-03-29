call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'pearofducks/ansible-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'lambdalisue/suda.vim'
" This plugin requires code-minimap to be installed and available on PATH
" Plug 'wfxr/minimap.vim'
call plug#end()

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Display line numbers
set number

" Set color scheme
colorscheme molokai

" Enable rainbow brackets on default
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" minimap.vim settings
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Inverse-tab when using shift-tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-D>

" Move screen up and down with Ctrl + Arrow keys
nnoremap <C-Up> <C-y>
nnoremap <C-Down> <C-e>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc extensions to be installed
let g:coc_global_extensions = [
      \'@yaegassy/coc-ansible',
      \'coc-clangd',
      \'coc-docker',
      \'coc-diagnostic',
      \'coc-go',
      \'coc-groovy',
      \'coc-html',
      \'coc-json', 
      \'coc-pyright',
      \'coc-rust-analyzer',
      \'coc-sh',
      \'coc-tsserver',
      \'coc-vetur',
      \'coc-yaml'
      \]

" Turn on suda smart edit
let g:suda_smart_edit = 1

