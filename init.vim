set number
set nocompatible
set hidden
set encoding=UTF-8
set nowrap
set nocp
set showcmd
set mouse=a
set rnu
set noshowmode
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

set clipboard=unnamed
                                                                                                                                                                                                                                                                        
set nowildmenu                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                      
set nobackup                                                                                                                                                                                                                                                                                          
set nowritebackup                                                                                                                                                                                                                                                                                     
set noswapfile                                                                                                                                                                                                                                                                                        
set relativenumber                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                      
set laststatus=2                                                                                                                                                                                                                                                                                      
set scrolloff=5                                                                                                                                                                                                                                                                                       
let mapleader=","     



filetype plugin on

"For use vim plug for neovim
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', {'tag':'*'}
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() }}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

Plug 'ayu-theme/ayu-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
call plug#end()

"Map of keyboard setting Personal

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <C-r> :Rg<CR>

nnoremap <leader>n: NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeClose<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
"nnoremap <Up> <NOP>
"nnoremap <Down> <NOP>
"nnoremap <Left> <NOP>
"nnoremap <Right> <NOP>


"code personal
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


"
" Go tools for autocomplete
"

"
" Themes 
"

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


"
" airline
"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'




