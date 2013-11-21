"=============================================================================
" File: shinchoku.vim
" Author: mopp
" Created: 2013-11-21
"=============================================================================


if exists('g:loaded_shinchoku')
    finish
endif
let g:loaded_shinchoku = 1

let s:save_cpo = &cpo
set cpo&vim


augroup shinchoku
    autocmd!
    autocmd CursorHold,CursorHoldI * call shinchoku#echo_shinchoku()
    autocmd CursorHold,CursorHoldI * call shinchoku#ask_shinchoku()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
