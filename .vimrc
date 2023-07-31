" Basic configs
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set mouse=a
syntax enable
set updatetime=200
let mapleader = " "
set nowrap
set scrolloff=10
set hidden
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
  
nmap <leader>w :w!<cr>
nmap <leader>vs :vsplit<cr>
nmap <leader>ss :split<cr>
nmap <leader>q :close<cr>
nmap \ :vsplit<cr>
nmap <leader>tc :tabclose<cr>
imap jk <esc>
nnoremap <leader>n :tabnew<CR>
nmap <S-l> :tabnext<cr>
nmap <S-h> :tabprevious<cr>

" Window
nmap <leader>sv <C-w>v
nmap <leader>sh <C-w>s
nmap <leader>se <C-w>=


set incsearch
set nobackup
set nowb
set noswapfile
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" Restore last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Remove sounds
set noerrorbells

set novisualbell
set t_vb=
set tm=300

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'HerringtonDarkholme/yats.vim'

" JavaScript and Typescript plugins
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mlaursen/vim-react-snippets'

" NERDTree plugins
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Themes plugins
Plug 'joshdick/onedark.vim'
Plug 'Everblush/everblush.vim'
Plug 'pacokwon/onedarkhc.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly'  }

" Find files plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wookayin/fzf-ripgrep.vim'

" Autocomplete plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-eslint'
Plug 'rstacruz/vim-coc-settings'

" Helpers text changer plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'voldikss/vim-floaterm'
Plug 'ap/vim-css-color'

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Floatterminal
let g:floaterm_position='bottomleft'
nmap <leader>th :FloatermToggle --width=50<cr>

" NERDTree
let NERDTreeShowHidden = 1
set encoding=utf8

" Airline
let g:airline_theme='nightfly'
" Auto saving
let g:auto_save = 1

" Coc configs
let g:coc_global_extensions = ['coc-tsserver', 'coc-vetur', 'coc-clangd', 'coc-emmet', 'coc-tailwindcss', 'coc-snippets']

" Theme
if (has("termguicolors"))
  set termguicolors
endif

autocmd ColorScheme * hi Normal ctermbg=black guibg=#121212
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

colorscheme nightfly  	 

set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE


" Vimspecter Config
let g:vimspector_enable_mappings = 'HUMAN'

" GitGutter
let g:gitgutter_override_sign_column_highlight = 1

" REMAPS ------------------------------------------
"
" Autocomplete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" Window navigation
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Moving lines
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" Keymap Coc.Nvim
nmap <leader>ai  <Plug>(coc-codeaction)

nmap <silent> gu :call CocAction('jumpDefinition', 'tabe')<CR>

nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>gf  <Plug>(coc-format-selected)

function! ShowDocumentation()
	  if CocAction('hasProvider', 'hover')
			call CocActionAsync('doHover')
		else
	    call feedkeys('K', 'in')
		endif
endfunction

" Nerdtree navigation
nnoremap <leader>e :NERDTreeToggle<CR>

" Fzf maps
map <Leader>f :Files<CR>

let s:gui_black = "#282C34"
