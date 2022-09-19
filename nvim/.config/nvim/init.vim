call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'pearofducks/ansible-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'lambdalisue/suda.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'folke/todo-comments.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'
" This plugin requires code-minimap to be installed and available on PATH
" Plug 'wfxr/minimap.vim'
call plug#end()

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <Tab>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()

" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" " Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Display line numbers
set number

" Allow mouse scrolling for coc documentation
set mouse=a 

" Set color scheme
let g:gruvbox_contrast_dark = "hard"
colorscheme molokai

let mapleader = " "

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
" inoremap <S-Tab> <C-D>

" Move screen up and down with Ctrl + Arrow keys
nnoremap <C-Up> <C-y>
nnoremap <C-Down> <C-e>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" coc extensions to be installed
let g:coc_global_extensions = [
      \'@yaegassy/coc-ansible',
      \'coc-clangd',
      \'coc-docker',
      \'coc-diagnostic',
      \'coc-go',
      \'coc-groovy',
      \'coc-html',
      \'coc-htmldjango',
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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Double click space to get rid of highlights
nnoremap <Leader><space> :noh<cr>

nnoremap <leader>td <cmd>TodoTelescope<cr>

let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

"
"lua settings
lua << EOF
  require("todo-comments").setup {}
  require("trouble").setup {}
  require("lsp-colors").setup {
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
}
EOF

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

