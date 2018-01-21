" ---------------------------------------------------------------------------------------------------------------
" ------------------------------------------- "
"  __   __ __   __    __   ______   ______    "
" /\ \ / //\ \ /\  -./  \ /\  == \ /\  ___\   "
" \ \ \'/ \ \ \\ \ \-./\ \\ \  __< \ \ \____  "
"  \ \__|  \ \_\\ \_\ \ \_\\ \_\ \_\\ \_____\ "
"   \/_/    \/_/ \/_/  \/_/ \/_/ /_/ \/_____/ "
"                                             "
"               Dimitar Rusev                 "
"          https://dimitarrusev.com           "
"                                             "
" ------------------------------------------- "

" ------------------------------------------- "
" General
" ------------------------------------------- "
set nocompatible          		                " Disable Vi compatibility
so ~/.vim/plugins.vim                                   " Load plugins.

syntax enable
set backspace=indent,eol,start		                " Allow backspacing over everything in insert mode
let mapleader=','			                " Set custom <Leader> key
set tabstop=8                                           " Set tab width
set expandtab
set softtabstop=4
set shiftwidth=4
" set macligatures                                        " Use pretty symbols when available
set guioptions-=e                                       " Turn off gui tabs

" ------------------------------------------- "
" Visual Appearance
" ------------------------------------------- "
colorscheme jellybeans+  
let g:airline_theme='jellybeans'

set guifont=Monaco:h17
" set guifont=Menlo:h17
" set guifont=Inconsolata:h19
" set guifont=Consolas:h19
highlight Comment gui=italic
highlight htmlArg gui=italic
highlight Comment cterm=italic                          
highlight htmlArg cterm=italic
set linespace=10
set number

set guioptions-=l
set guioptions-=L 
set guioptions-=r
set guioptions-=R

hi lineNr ctermbg=bg
hi lineNr guibg=bg
hi lineNr ctermfg=DarkGray
hi lineNr guifg=#444444
hi Comment ctermfg=DarkGray
hi Comment guifg=#444444

" Get rid of vertical split borders
hi vertsplit guifg=bg guibg=bg

" Map `,ev` to open .vimrc in a new tab
" nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ev :e $MYVIMRC<cr>

" Map `, ` to turn off search highlights
nmap <Leader><space> :nohlsearch<cr>

" Map `<Shift>j` and '<Shift>k' to move 10 lines down and up respectively
map <S-j> 10j
map <S-k> 10k

" ----------------------------------------------------
" Search
" ----------------------------------------------------
set hlsearch
set incsearch

" ----------------------------------------------------
" Split Window Management
" ----------------------------------------------------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J> 
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" ----------------------------------------------------
" Nerdtree Shortcut
" ----------------------------------------------------
nnoremap <D-1> :NERDTreeToggle<CR>                          " Remap toggle keys 
let NERDTreeShowHidden=1                                    " Show hidden files
let NERDTreeIgnore = ['\.swp$', '\.git$', 'node_modules']   " Hide certain file types
let NERDTreeChDirMode=2                                     " NERDTree will keep pointing at the directory from which Vim 
                                                            " was originally opened no matter what new files are opened. 
                                                            " This setting automatically changes it to the desired directory.

" ----------------------------------------------------
" CtrlP 
" ----------------------------------------------------
" let g:ctrlp_user_command = 'find %s -type f | grep -v "node_modules/"'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ----------------------------------------------------
" Emmet
" ----------------------------------------------------
let g:user_emmet_leader_key='<C-e>'         " Ctrl e ,

" ----------------------------------------------------
" Unimpaired
" ----------------------------------------------------
" Bubble single lines
"nmap <C-Up> [e
"nmap <C-Down> ]e

" Bubble multiple lines
"nmap <C-Up> [egv
"nmap <C-Down> ]egv

" ----------------------------------------------------
" TypesScript 
" ----------------------------------------------------

" Uncomment to display TypeScript compilation errors in Vim QuickFix window 
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''
" autocmd QuickFixCmdPost [^l]* nested cwindow
" autocmd QuickFixCmdPost    l* nested lwindow

" Integration with syntastic for in-editor syntax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" removes false experimentalDecorators warning 
let g:syntastic_typescript_tsc_fname = ''

" autoload vim-js-pretty-template configuration with TypeScript files 
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" ----------------------------------------------------
" Auto Commands
" ----------------------------------------------------

" Automatically source .vimrc on save
augroup autosource
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" Expand NERDTree on launch and clear the right window
augroup setupdevenv
    autocmd VimEnter * NERDTree
    
    if argc() > 0 && isdirectory(argv(0))
        autocmd VimEnter * wincmd p
        autocmd VimEnter * :bd
    endif
augroup END
