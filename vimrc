filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set tags+=$HOME/.vim/tags/python.ctags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType go imap <C-Space> <C-x><C-o>
autocmd FileType go set sw=4 
autocmd FileType go set ts=4
inoremap <Nul> <C-x><C-o>
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>

if has("ruby")
    map \t :FuzzyFinderTextMate<CR>
    map \b :FuzzyFinderBuffer<CR>
endif

let g:CommandTMatchWindowAtTop = 1
let g:CommandTAcceptSelectionTabMap = "<C-]>"

map \n :silent! IP nerdtree<CR>:do NERDTree VimEnter<CR>:NERDTreeToggle<CR>
map \y :YRShow<CR>
map \g :silent! IP gundo<CR>:GundoToggle<CR>
map \ch :silent! IP Conque-Shell<CR>:ConqueTermSplit bash<CR>
map \cv :silent! IP Conque-Shell<CR>:ConqueTermVSplit bash<CR>
map \ct :silent! IP Conque-Shell<CR>:ConqueTermTab bash<CR>
map \p :silent! IP taglist<CR>:TlistToggle<CR>
map gn :silent! IP buffernewwin<CR>:call OpenBufNewGvim()<CR>

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

map <F2> <ESC>ofrom ipdb import set_trace; set_trace()<ESC>:w<CR>
map <F4> <ESC>:set hlsearch! hlsearch?<cr>
map <F5> <ESC>:set incsearch! incsearch?<cr>
map <F6> <ESC>:silent! IP gundo<CR>:GundoToggle<cr>

vmap gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
let python_highlight_all = 1
let python_highlight_space_errors = 1

"colorscheme jellybeans
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
autocmd FileType python imap <C-Space> <C-R>=TabWrapperRope()<CR>
  
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

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

colorscheme twilight2
set vb t_vb=
call ipi#inspect()
if v:version >= 730
    set cm=blowfish
endif

"disable bells
set noeb vb t_vb=
autocmd GUIEnter * set visualbell t_vb=

set autoindent
set smarttab
