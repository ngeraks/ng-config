
" list buffers and select buffer for faster switching
nnoremap gb :ls<CR>:b<Space>

" spaces instead of tabs
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" tabline
hi TabLine ctermfg=darkgrey ctermbg=NONE
hi TabLineFill term=bold cterm=bold
hi TabLineSel ctermfg=white cterm=bold

" vert split border
hi VertSplit cterm=NONE ctermfg=Black ctermbg=NONE
set fillchars+=vert:\ "

hi StatusLineNC  cterm=NONE ctermfg=darkgrey ctermbg=NONE
hi Search cterm=bold ctermfg=white ctermbg=black
hi Visual cterm=bold ctermbg=black

"numbers and relative numbers
set number
set rnu

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

"Turn syntax highlighting on.
syntax on
set syntax=whitespace
set background=light "or dark
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Remove the underline from enabling cursorline:
hi clear CursorLine
" Set line numbering style
hi CursorLine cterm=bold
" ctermbg=black
hi CursorLineNR cterm=bold ctermfg=white
"ctermbg=black
hi LineNr ctermfg=darkgrey
"set list
"asdfasdfasdfasfdasfdasdfasdfasdf
hi Visual term=reverse cterm=reverse

"Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

autocmd BufWritePre * :%s/\s\+$//e

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
"au InsertLeave * hi statusline term=bold cterm=bold guibg=DarkGrey ctermfg=White guifg=White ctermbg=Black

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

