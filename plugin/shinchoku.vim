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
    autocmd CursorHold,CursorHoldI * echomsg shinchoku#echo_shinchoku()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
