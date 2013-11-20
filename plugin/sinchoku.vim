"=============================================================================
" File: sinchoku.vim
" Author: mopp
" Created: 2013-11-21
"=============================================================================


if exists('g:loaded_sinchoku')
    finish
endif
let g:loaded_sinchoku = 1

let s:save_cpo = &cpo
set cpo&vim

augroup sinchoku
    autocmd!
    autocmd CursorHold,CursorHoldI * echomsg "進捗どうですか"
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
