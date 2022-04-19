" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" list buffers and select buffer for faster switching
nnoremap gb :ls<CR>:b<Space>

" Yank from cursor to the end of line.
nnoremap Y y$

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><


function! TmuxMove(direction)
        let wnr = winnr()
        silent! execute 'wincmd ' . a:direction
        " If the winnr is still the same after we moved, it is the last pane
        if wnr == winnr()
                call system('tmux select-pane -' . tr(a:direction, 'phjkl', 'lLDUR'))
        end
endfunction

nnoremap <silent> <C-Left> :call TmuxMove('h')<cr>
nnoremap <silent> <C-Down> :call TmuxMove('j')<cr>
nnoremap <silent> <C-Up> :call TmuxMove('k')<cr>
nnoremap <silent> <C-Right> :call TmuxMove('l')<cr>
nnoremap <silent> <C-h> :call TmuxMove('h')<cr>
nnoremap <silent> <C-j> :call TmuxMove('j')<cr>
nnoremap <silent> <C-k> :call TmuxMove('k')<cr>
nnoremap <silent> <C-l> :call TmuxMove('l')<cr>

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
"nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>


" spaces instead of tabs
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=8

"if exists('$TMUX')
"  autocmd BufEnter,FocusGained * call system("tmux rename-window
". expand("%:t"))
"  autocmd BufEnter,FocusGained * call system("tmux set-option -g pane-border-format
" . expand("%:t"))
"  autocmd VimLeave * call system("tmux rename-window zsh")
"endif

" tabline
hi TabLine ctermfg=darkgray ctermbg=NONE
hi TabLineFill term=bold cterm=bold
hi TabLineSel ctermfg=white cterm=bold

" vert split border
hi VertSplit cterm=NONE ctermfg=Black ctermbg=NONE
set fillchars+=vert:\ "

" diff
hi DiffAdd    cterm=bold ctermbg=48 
"springgreen1
hi DiffDelete cterm=bold ctermbg=Black 
hi DiffChange cterm=bold ctermbg=NONE
hi DiffText   cterm=bold ctermbg=174
" lightpink3
hi DiffSplit cterm=NONE ctermfg=NONE ctermbg=NONE

hi FoldColumn cterm=NONE ctermbg=NONE
hi Folded cterm=bold ctermbg=NONE
" numbers
hi StatusLineNC  cterm=bold ctermfg=darkgray ctermbg=NONE
hi Search cterm=bold ctermfg=white ctermbg=darkgray
hi Visual cterm=bold ctermbg=black

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

"numbers and relative numbers
set number
set rnu




" Set the commands to save in history default number is 20.
set history=100

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Enable type file detection
filetype on

" Load an indent file for the detected file type.
filetype indent on

"Turn syntax highlighting on.
syntax on
"set syntax=whitespace

set background=light "or dark

" Set the color scheme.
"colorscheme molokai

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Remove the underline from enabling cursorline:
hi clear CursorLine

" Set line numbering style
hi CursorLine cterm=bold

" ctermbg=black
hi CursorLineNR cterm=bold ctermfg=white
"ctermbg=black

hi LineNr ctermfg=darkgray
"set list
hi Visual term=reverse cterm=reverse

"Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

"autocmd BufWritePre * :%s/\s\+$//e

"Don't eslect numbers with mouse
if has('mouse')
  set mouse=a
endif
"show keystrokes
set showcmd

"clipboard?
set clipboard=unnamedplus

"endline cursor
ve+=onemore

"remove ~ characters, else make them black
"hi EndOfBuffer ctermfg=bg "requires vim8
hi NonText ctermfg=black

"fuzzyfind and wildcardmenu chooser
set path+=**
set wildmenu
set wildmode=list:full
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags

"filename bottom
set laststatus=2
set statusline=%F

"function! InsertStatuslineColor(mode)
"  if a:mode == 'i'
"    hi statusline guibg=Cyan ctermfg=6 guifg=White ctermbg=0
"  elseif a:mode == 'r'
"    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
"  else
"    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
"  endif
"endfunction
"
"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertLeave * hi statusline term=bold cterm=bold guibg=darkgray ctermfg=White guifg=White ctermbg=Black

" default the statusline to color/style  when entering
hi statusline cterm=NONE cterm=bold

"Formats the statusline
set statusline=%F
" file name
"set statusline+=[%{strlen(&fenc)?&fenc:'none'},
"file encoding
"set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

" Puts in the current git status
"if count(g:pathogen_disabled,'Fugitive') < 1
"set statusline+=%{fugitive#statusline()}
"endif

" Puts in syntastic warnings
"if
"count(g:pathogen_disabled,'Syntastic') < 1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"endif
"alignleft
set statusline+=\ %=
"lineXofY[percentoffile]
"set statusline+=L:%l/%L
"current column
"set statusline+=\ C:%c
"Buffer number
"set statusline+=\ B:%n
"ASCII and byte code under cursor
"set statusline+=\ [%b][0x%B]\

