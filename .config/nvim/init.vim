set nocompatible            " disable compatibility to old-time vi
syntax on                   " syntax highlighting
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set expandtab               " converts tabs to white space
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set noerrorbells
set smartindent
set nowrap
set smartcase
set nobackup
set undofile
set statusline+=%F
" Code folding
set foldmethod=manual "syntax highlighting items specify folds  
set foldcolumn=1            "defines 1 col at window left, to indicate folding  
let javaScript_fold=1       "activate folding by JS syntax  
set foldlevelstart=99       "start file with all folds opened
set wildmode=longest,list   " get bash-like tab completions
" set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
set mouse=v                 " middle-click paste with 
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set backupdir=~/.cache/nvim  " Directory to store backup files.
set undodir=~/.nvim/undodir
set re=0
" Show always single column
set signcolumn=yes
" set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey "
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Use current buffer as wd
" autocmd BufEnter * lcd %:p:h

" Plugins setup
call plug#begin('~/.nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
" Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'yuezk/vim-js'
Plug 'ianks/vim-tsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'vim-utils/vim-man'
" Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mogelbrod/vim-jsonpath'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
" Vim wiki
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
" Plug 'justinmk/vim-sneak'
Plug 'gko/vim-coloresque'
Plug 'elzr/vim-json'
Plug 'orlandov/vimfluence'
Plug 'vim-scripts/confluencewiki.vim'
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx','typescript'], 'do': 'make install' }
Plug 'ruanyl/vim-gh-line'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sindresorhus/focus', {'rtp': 'vim'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'robbyrussell/oh-my-zsh'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-github.nvim'
" brew install fd
" brew install ripgrep
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'easymotion/vim-easymotion'
Plug 'NTBBloodbath/rest.nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'vim-test/vim-test'

call plug#end()

" ============================================================================================
" ================================ LUA CONFIG ================================================

lua << EOF
require('gitsigns').setup{
  attach_to_untracked = true,
  current_line_blame = true 
}
EOF

" ============================================================================================
" Disable netrw
let loaded_netrwPlugin = 1

" Signify
let g:signify_realtime = 1
" Sneak
let g:sneak#label = 1

" Rainbow parenthesis
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'yellow', 'FireBrick']
let g:rainbow_ctermfgs = ['RoyalBlue3','lightblue', 'lightgreen', 'yellow', 'magenta']

" Minimap
let g:minimap_width = 10
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colorlet = 1

" Dev Icons
" loading the plugin
let g:webdevicons_enable = 1

" Vim test
let g:test#javascript#runner = 'jest'

" Netrw
" let g:netrw_liststyle = 3
" let g:netrw_banner = 0
" let g:netrw_browse_split = 1
" let g:netrw_winsize = 25
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END


" 
" set conceallevel=1
" let g:typescript_conceal_function             = "ƒ"
" let g:typescript_conceal_null                 = "ø"
" let g:typescript_conceal_undefined            = "¿"
" let g:typescript_conceal_this                 = "@"
" let g:typescript_conceal_return               = "⇚"
" let g:typescript_conceal_prototype            = "¶"
" let g:typescript_conceal_super                = "Ω"

" Vim TSX Colors
" let g:yats_host_keyword = 1
" let g:vim_jsx_pretty_colorful_config = 1 
" VIM JSX
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75
" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic
" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666
" other
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
" gruvbox
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (has("nvim"))
"   "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

set background=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_termcolors=256
colorscheme gruvbox-material

" Deepak minimalist
" set t_Co=256
" colorscheme minimalist
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['./git', 'git --git-dir=%s/.git ls-files']
let g:netrw_browse_split=2
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|.git'
let g:netrw_winsize=25
let g:ctrlp_use_caching=0
let g:ctrlp_show_hidden=1
" Vim ariline
let g:airline_statusline_ontop=0
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" Key remap
let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent><esc><esc> :nohls<cr>
" Undotree
nmap <leader>ut :UndotreeToggle<CR>
" move line or visually selected block - alt+j/k
vmap <S-Up> :m -1<CR>
vmap <S-Down> :m +1<CR>
" Tabs
" nnoremap <silent> <leader><Right> :bn<CR>
" nnoremap <silent> <leader><Left> :bp<CR>
" nnoremap <leader>bu :ls<Enter>
" Exit
nnoremap <leader><ESC> :clo<CR>
nnoremap <silent><S-Esc> :cclose <CR>
" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
nnoremap <silent><leader> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
nnoremap <silent><leader> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
" if has("autocmd")
"     \| exe "normal! g'\"" | endif
" endif

"You complete Me"
" nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
" nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
" nnoremap <silent> <leader>gi :YcmCompleter GoToImplementation<CR>
" nnoremap <silent> <leader>gs :YcmCompleter GoToSymbol<SPACE>
" nnoremap <silent> <leader>gr :YcmCompleter GoToReferences<CR>
" nnoremap <silent> <leader>go :YcmCompleter OrganizeImports<CR>
" nnoremap <silent> <leader>rf :YcmCompleter RefactorRename<SPACE>

" UndotreeShow
"Coc"
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-jest']
" GoTo code navigation.
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gy <Plug>(coc-type-definition)
nmap <silent><leader>gi <Plug>(coc-implementation)
nmap <silent><leader>gr <Plug>(coc-references)
nmap <silent><leader>rf <Plug>(coc-rename)
nmap <leader>oo :CocList outline<CR>
nmap <leader>bb <Plug>(coc-codeaction)
nmap <leader>gf <Plug>(coc-fix-current)
nmap <silent> <C-e> :CocDiagnostics<CR>
" JsDc
nmap <silent> <C-l> <Plug>(jsdoc)
" Use K to show documentation in preview window.
nnoremap <silent><leader>K :call <SID>show_documentation()<CR>
" Use Ctrl+Space to auto complete
inoremap <silent><expr> <c-@> coc#refresh()
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" format code
nmap <leader>f <Plug>(coc-format-selected)
vmap <leader>f <Plug>(coc-format-selected)
" Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
" refactor rename
nmap <leader>rf <Plug>(coc-rename)
" Coc JSON support
" autocmd FileType json syntax match Comment +\/\/.\+$+
" Minimap
nmap <silent><leader>tt :MinimapToggle<CR>
" Buffers
nnoremap <silent> <C-x> :bd<CR>
nnoremap <C-l> :CtrlPBuffer<CR>
nnoremap <S-Left> :bp<CR>
nmap <S-Right> :bn<CR>
" NerdTree
let NERDTreeQuitOnOpen = 1 " quit after opening file
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeHijackNetrw=0
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"
" lua require'nvim-tree'.setup { }
" 
" nnoremap <C-t> :NvimTreeToggle<CR>
" nnoremap <leader>tr :NvimTreeRefresh<CR>
" nnoremap <C-f> :NvimTreeFindFileToggle<CR>

" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent ieeMirror | endif

" vimWiki 
let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_map_prefix = '<leader>w'
nmap <silent><leader>ww <Plug>VimwikiIndex
nmap <silent><leader>wl <Plug>VimwikiDiaryIndex
nmap <silent><leader>nn <Plug>VimwikiMakeDiaryNote

" Git
" Git status
nmap <leader>gs :G<CR> 
nmap <leader>g[ :diffget //2<CR> 
nmap <leader>g] :diffget //3<CR> 
nmap <leader>grm :G pull --rebase origin master<CR> 

" Git gutter
nmap <leader>h] <Plug>(GitGutterNextHunk)
nmap <leader>h[ <Plug>(GitGutterPrevHunk)
nmap <leader>hh <Plug>(GitGutterLineHighlightsToggle)<CR>

" React refactor
xmap <leader>r  <Plug>(coc-codeaction-selected)
nmap <leader>r  <Plug>(coc-codeaction-selected)

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" JsonPath
let g:jsonpath_register = '*'
au FileType json noremap <buffer> <silent> <leader>j? :call jsonpath#echo()<CR>
au FileType json noremap <buffer> <silent> <leader>j/ :call jsonpath#goto()<CR>

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

" Git gutter
" let g:gitgutter_diff_relative_to = 'working_tree'
" Coc CSS
autocmd FileType scss setl iskeyword+=@-@
" Highlight indent
" let g:indent_blankline_show_current_context = v:true
" let g:indent_blankline_show_current_start = v:true
" let g:indent_blankline_space_char_blankline = v:true
" Autocmd 
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd ColorScheme *
        \ highlight minimapCursor            ctermbg=59  ctermfg=228 guibg=#5F5F5F guifg=#FFFF87 |
        \ highlight minimapRange             ctermbg=242 ctermfg=228 guibg=#4F4F4F guifg=#FFFF87
" augroup ScrollbarInit
"   autocmd!
"   autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end
" augroup json_autocmd
"   autocmd!
"   autocmd FileType json set autoindent
"   autocmd FileType json set formatoptions=tcq2l
"   autocmd FileType json set textwidth=78 shiftwidth=2
"   autocmd FileType json set softtabstop=2 tabstop=8
"   autocmd FileType json set expandtab
"   autocmd FileType json set foldmethod=syntax
" augroup END
