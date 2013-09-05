set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
Bundle 'aaronbieber/quicktask'
Bundle 'ervandew/supertab'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim' 
Bundle 'tpope/vim-fugitive' 

"Bundle 'Raimondi/delimitMate.git'
"Don't think I like autoclosing
Bundle 'amiorin/vim-fasd.git'
Bundle 'amiorin/ctrlp-z'

Bundle 'sjl/gundo.vim.git' 
map \g :silent! IP gundo<CR>:GundoToggle<CR>

Bundle 'michaeljsmith/vim-indent-object' 
Bundle 'scrooloose/syntastic'
Bundle 'mattn/calendar-vim'
Bundle 'vimwiki/vimwiki'

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/main', 'path_html': '~/Dropbox/vimwiki/main_html'},
	\ {'path': '~/Dropbox/vimwiki/work', 'path_html': '~/Dropbox/vimwiki/work_html'}]
let g:vimwiki_use_mouse = 1

autocmd filetype vimwiki setlocal wrap
autocmd filetype vimwiki setlocal textwidth=100
autocmd filetype vimwiki setlocal shiftwidth=2
"?

Bundle 'Valloric/YouCompleteMe'
"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

Bundle 'scrooloose/nerdcommenter'

"Bundle 'finder/rope-vim.git' 
"let ropevim_vim_completion=1
"let ropevim_extended_complete=1
"function! TabWrapperRope()
"  if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
"      return "\<Tab>"
"  else
"      return "\<C-R>=RopeCodeAssistInsertMode()\<CR>"
"  endif
"endfunction
" autocmd FileType python imap <C-Space> <C-R>=TabWrapperRope()<CR>

Bundle 'kien/ctrlp.vim.git' 
let g:ctrlp_extensions = ['tag']
map \b :CtrlPBuffer<CR>
map \t :CtrlPTag<CR>
"fasd integration with nerdtree and ctrlp
nnoremap \z :CtrlPZ<Cr>
nnoremap \f :CtrlPF<Cr>

"should use
Bundle 'mbbill/echofunc' 
Bundle 'jnwhiteh/vim-golang' 
"Bundle 'finder/AutoClose--Alves' 
Bundle 'Lokaltog/vim-easymotion' 
Bundle 'airblade/vim-gitgutter' 
"testing
Bundle 'goldfeld/vim-seek' 
let g:seek_enable_jumps = 1
"testing

"Bundle 'davidhalter/jedi-vim'
let g:jedi#rename_command = "<leader>r"
let g:jedi#autocompletion_command = "<C-Space>"
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0

Bundle 'SirVer/ultisnips'
"" Ultisnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

let g:UltiSnipsEditSplit = "horizontal"

" vim-notes
Bundle 'bogado/file-line'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'utl.vim'
nnoremap cp :let @" = expand("%:p") . ":" . line(".")<CR>

Bundle 'alfredodeza/pytest.vim'
Bundle 'avakhov/vim-yaml'

Bundle 'sandeepcr529/Buffet.vim'
map <F3> :Bufferlist<CR>
map \v :Bufferlist<CR>

Bundle 'jeetsukumaran/vim-buffersaurus'
 " vim-scripts repos
Bundle 'buftabs'
"Bundle 'minibufexpl.vim'
set laststatus=2
let g:buftabs_in_statusline=1
let g:buftabs_only_basename=1
set hidden
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <C-h> :bnext<CR>
map <C-l> :bprev<CR>
function! GoBuf(count)
	if count == 0
		:bnext
	else
		:exe ":buffer ".v:count
	endif
endfunction
nmap gb :<C-U>call GoBuf(v:count)<CR>
map gB :bprev<CR>
map gh :set buflisted!<CR>
au BufLeave * let b:winview = winsaveview()
au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif


Bundle 'L9' 
Bundle 'bufmru.vim'
"prereq
Bundle 'genutils' 
"prereq
Bundle 'CSApprox' 
Bundle 'grep.vim' 
"testing
Bundle 'LargeFile'

Bundle 'The-NERD-tree' 
map \n :silent! IP nerdtree<CR>:do NERDTree VimEnter<CR>:NERDTreeToggle<CR>

Bundle 'PySmell' 
Bundle 'snippets.vim' 
Bundle 'surround.vim' 

Bundle 'taglist.vim' 
map \p :silent! IP taglist<CR>:TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Enable_Fold_Column=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
let Tlist_Sort_Type = "name"

Bundle 'gitv' 
"sometimes use
Bundle 'argtextobj.vim' 
"should use
Bundle 'LustyJuggler' 
"should use
"
Bundle 'YankRing.vim' 
map \y :YRShow<CR>
let g:yankring_replace_n_pkey = '\up'
let g:yankring_replace_n_nkey = '\ur'
let g:yankring_record_insert = 1

"Bundle 'AutoComplPop' 
Bundle 'AutoTag' 
Bundle 'guicolorscheme.vim'

" non github repos

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set tags+=$HOME/.vim/tags/python.ctags
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType go imap <C-Space> <C-x><C-o>
autocmd FileType js set expandtab
autocmd FileType html set expandtab
set sw=4 
set ts=4
inoremap <Nul> <C-x><C-o>
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>

"map \a :AutoCloseToggle<CR>
nmap <leader>l :set list!<CR>
"set listchars=tab:▸\ ,eol:¬

"show the preview window with the current tag
nmap \; <C-w>}

filetype plugin indent on
filetype on
filetype plugin on
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

set viminfo='20,"20
set wildignore+=*.o,.git,*.pyc

set textwidth=0
set nowrap
set number

let g:fuzzy_ignore = '*.pyc;.git/*;.svn/*'

map <F2> :normal ofrom ipdb import set_trace; set_trace()<ESC>:w<CR>
map <F4> <ESC>:set hlsearch! hlsearch?<cr>
map <F5> <ESC>:set incsearch! incsearch?<cr>

vmap gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
let python_highlight_all = 1
let python_highlight_space_errors = 1

set cursorline

syntax on
  
fun! SPLITAG() range
  let oldfile=expand("%:p")
  if &modified
    split
  endif
  exe "tag ". expand("<cword>")
  let curfile=expand("%:p")
  if curfile == oldfile
    let pos=getpos(".")
    if &modified
      " if we have split before:
      quit
    endif
    call setpos('.', pos)
  endif
endfun
nmap <C-]> :call SPLITAG()<CR>z.

set foldmethod=indent
set foldlevel=1000
set guioptions-=T
set guioptions-=m
set guifont=Inconsolata\ Medium\ 12
set mouse=ra
set incsearch


set t_Co=256

"command! -nargs=* -complete=file Ctags !ctags -R --fields=+lS .

" Edit relative to current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ee :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
autocmd BufReadPost fugitive://* set bufhidden=delete

" setting undo
" set undofile
" set undodir=~/.vimundo
" set undolevels=1000
" set undoreload=10000 
if has("mac")
    set guifont=Inconsolata:h15<CR>
endif

if $WORKON=="work"
    cd $WORKONDIR
endif

let t_Co = 256

"colorscheme twilight2
"colorscheme jellybeans
"colorscheme zmrok
"colorscheme ir_black
set vb t_vb=
if v:version >= 730
    set cm=blowfish
endif

"disable bells
set noeb vb t_vb=
autocmd GUIEnter * set visualbell t_vb=

set autoindent
set smarttab

"ctags options
let g:ctags_regenerate = 0
"let g:AutoClosePairs = {'(': ')', '[': ']', '"': '"', "'": "'"}

let g:seek_enable_jumps_in_diff = 1 
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
if has("gui_running")
	colorscheme twilight2
else
	colorscheme twilight2-console
endif
let g:ctrlp_working_path_mode = ''

"Retraining
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
inoremap jk <esc>
inoremap kj <esc>
noremap <PageDown> <nop>
noremap <PageUp> <nop>

" YAML stuff

augroup yamlfiles
autocmd filetype yaml setlocal autoindent
autocmd filetype yaml setlocal expandtab
autocmd filetype yaml setlocal noignorecase
autocmd filetype yaml setlocal shiftround
autocmd filetype yaml setlocal shiftwidth=2
autocmd filetype yaml setlocal smartindent
autocmd filetype yaml setlocal softtabstop=2
autocmd filetype yaml setlocal tabstop=2
autocmd filetype yaml setlocal textwidth=0
autocmd filetype yaml setlocal indentexpr=GetYamlIndent()
augroup END

set backupdir=~/backup
set directory=~/backup
set backup

" Save session for current directory
fu! SaveSess()                                                                                                                                                                                                                                                                                                              
    execute 'mksession! ' . getcwd() . '/.session.vim'                                                                                                                                                                                                                                                                      
endfunction                                                                                                                                                                                                                                                                                                                 

fu! RestoreSess()                                                                                                                                                                                                                                                                                                           
if filereadable(getcwd() . '/.session.vim')                                                                                                                                                                                                                                                                                 
    execute 'so ' . getcwd() . '/.session.vim'                                                                                                                                                                                                                                                                              
    if bufexists(1)                                                                                                                                                                                                                                                                                                         
        for l in range(1, bufnr('$'))                                                                                                                                                                                                                                                                                       
            if bufwinnr(l) == -1                                                                                                                                                                                                                                                                                            
                exec 'sbuffer ' . l                                                                                                                                                                                                                                                                                         
            endif                                                                                                                                                                                                                                                                                                           
        endfor                                                                                                                                                                                                                                                                                                              
    endif                                                                                                                                                                                                                                                                                                                   
endif                                                                                                                                                                                                                                                                                                                       
syntax on                                                                                                                                                                                                                                                                                                                   
endfunction                                                                                                                                                                                                                                                                                                                 

autocmd VimLeave * call SaveSess()                                                                                                                                                                                                                                                                                          
"autocmd VimEnter * call RestoreSess()
vnoremap <C-X> <Esc>`.``gvP``P
map <F3> :r!date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>
