"set termguicolors " if you want to run vim in a terminal
syntax on
colorscheme breezy2
set number
behave mswin
set mouse=a
set guioptions+=a
map <C-c> "+y
map <C-x> "+c
" vim-plug
call plug#begin('~/.vim/plugged')
   Plug 'junegunn/goyo.vim'
call plug#end()

au BufNewFile,BufRead,BufEnter   *.tex    setlocal spell    spelllang=de_de
set wrap
set linebreak

" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
  if &wrap && b:gmove == 'yes'
    return "g" . a:movement
  else
    return a:movement
  endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")
vnoremap <silent> <expr> j ScreenMovement("j")
vnoremap <silent> <expr> k ScreenMovement("k")
vnoremap <silent> <expr> 0 ScreenMovement("0")
vnoremap <silent> <expr> ^ ScreenMovement("^")
vnoremap <silent> <expr> $ ScreenMovement("$")
vnoremap <silent> <expr> j ScreenMovement("j")
" toggle showbreak
function! TYShowBreak()
  if &showbreak == ''
    set showbreak=>
  else
    set showbreak=
  endif
endfunction
let b:gmove = "yes"
function! TYToggleBreakMove()
  if exists("b:gmove") && b:gmove == "yes"
    let b:gmove = "no"
  else
    let b:gmove = "yes"
  endif
endfunction
nmap  <expr> ,b  TYShowBreak()
nmap  <expr> ,bb  TYToggleBreakMove()

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

