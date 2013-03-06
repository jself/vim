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
Bundle 'mileszs/ack.vim' 
Bundle 'tpope/vim-fugitive' 
Bundle 'msanders/snipmate.vim' 
"should use
Bundle 'sjl/gundo.vim.git' 
"should use
Bundle 'michaeljsmith/vim-indent-object' 
"?
Bundle 'finder/rope-vim.git' 
Bundle 'kien/ctrlp.vim.git' 
"should use
Bundle 'mbbill/echofunc' 
Bundle 'jnwhiteh/vim-golang' 
Bundle 'finder/AutoClose--Alves' 
Bundle 'tpope/vim-fugitive' 
Bundle 'Lokaltog/vim-easymotion' 
Bundle 'airblade/vim-gitgutter' 
"testing
Bundle 'goldfeld/vim-seek' 
"testing
Bundle "davidhalter/jedi-vim"
"testing

 " vim-scripts repos
Bundle 'L9' 
"prereq
Bundle 'FuzzyFinder' 
Bundle 'genutils' 
"prereq
Bundle 'CSApprox' 
Bundle 'grep.vim' 
"testing
Bundle 'LargeFile'
Bundle 'The-NERD-tree' 
Bundle 'PySmell' 
Bundle 'snippets.vim' 
Bundle 'surround.vim' 
Bundle 'taglist.vim' 
Bundle 'ZenCoding.vim' 
"should use
Bundle 'gitv' 
"sometimes use
Bundle 'argtextobj.vim' 
"should use
Bundle 'LustyJuggler' 
"should use
Bundle 'YankRing.vim' 
Bundle 'AutoComplPop' 
Bundle 'AutoTag' 
Bundle 'guicolorscheme.vim'

 " non github repos
Bundle 'git://git.wincent.com/command-t.git' 
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

set tags+=$HOME/.vim/tags/python.ctags
" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType go imap <C-Space> <C-x><C-o>
set sw=4 
set ts=4
inoremap <Nul> <C-x><C-o>
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>

if has("ruby")
"    map \t :FuzzyFinderTextMate<CR>
endif

let g:CommandTMatchWindowAtTop = 1
let g:CommandTAcceptSelectionTabMap = "<C-]>"

map \n :silent! IP nerdtree<CR>:do NERDTree VimEnter<CR>:NERDTreeToggle<CR>
map \y :YRShow<CR>
let g:yankring_replace_n_pkey = '<S-p>'
let g:yankring_replace_n_nkey = '<S-n>'
map \g :silent! IP gundo<CR>:GundoToggle<CR>
map \ch :silent! IP Conque-Shell<CR>:ConqueTermSplit bash<CR>
map \cv :silent! IP Conque-Shell<CR>:ConqueTermVSplit bash<CR>
map \ct :silent! IP Conque-Shell<CR>:ConqueTermTab bash<CR>
map \p :silent! IP taglist<CR>:TlistToggle<CR>
map gn :silent! IP buffernewwin<CR>:call OpenBufNewGvim()<CR>
map \b :CtrlPBuffer<CR>
map \a :AutoCloseToggle<CR>

"show the preview window with the current tag
nmap \; <C-w>}
fu! CheckTag()
	try
		stopinsert
		normal h
		silent! exe "ptag " . expand("<cword>")
	finally
		normal l
		call feedkeys("a")
	endtry
endfunction
exe 'inoremap ( <Esc>:call CheckTag()<CR>' . maparg('(', 'i')


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
map <F6> <ESC>:silent! IP gundo<CR>:GundoToggle<cr>

vmap gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
let python_highlight_all = 1
let python_highlight_space_errors = 1

set cursorline

syntax on
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Enable_Fold_Column=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
let Tlist_Sort_Type = "name"
let ropevim_vim_completion=1
let ropevim_extended_complete=1


function! TabWrapperRope()
  if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
      return "\<Tab>"
  else
      return "\<C-R>=RopeCodeAssistInsertMode()\<CR>"
  endif
endfunction
" autocmd FileType python imap <C-Space> <C-R>=TabWrapperRope()<CR>
  
map <C-S> <ESC><S-v>:s/\(\(^\([^"']*\(["'][^"']*["']\)\)*[^"']*\)\@<=\)\+,\ze\S/& /g<CR>
nmap <silent> <Leader>x, :silent! %s/\(\(^\([^"']*\(["'][^"']*["']\)\)*[^"']*\)\@<=\)\+,\ze\S/& /g<CR>
map <A-t> :TaskList<CR>

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


" Vimwiki MAPPINGS {{{
map <silent><unique> <Leader>ww <Plug>VimwikiIndex
map <silent><unique> <Leader>wt <Plug>VimwikiTabIndex
map <silent><unique> <Leader>ws <Plug>VimwikiUISelect
map <silent><unique> <Leader>w<Leader>w <Plug>VimwikiMakeDiaryNote
map <silent><unique> <Leader>w<Leader>t <Plug>VimwikiTabMakeDiaryNote
"}}}

set t_Co=256

command! -nargs=* -complete=file Ctags !ctags -R --fields=+lS .

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
let g:AutoClosePairs = {'(': ')', '[': ']', '"': '"', "'": "'"}

let g:seek_enable_jumps_in_diff = 1 
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
if has("gui_running")
	colorscheme twilight2
else
	colorscheme twilight2-console
endif
let g:ctrlp_working_path_mode = ''
