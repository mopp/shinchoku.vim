"=============================================================================
" File: shinchoku.vim
" Author: mopp
" Created: 2013-11-21
"=============================================================================


if !exists('g:loaded_shinchoku')
    runtime! plugin/shinchoku.vim
endif
let g:loaded_shinchoku = 1

let s:save_cpo = &cpo
set cpo&vim


let s:is_shaberu = neobundle#is_installed('shaberu.vim') ? 1 : 0

function! shinchoku#echo_shinchoku()
    let store = get(g:, 'shaberu_user_define_say_command', 'say -v Kyoko "%%TEXT%%"')
    let g:shaberu_user_define_say_command = 'say -v Kyoko "%%TEXT%%"'
    if s:is_shaberu == 1
        ShaberuSay "進捗どうですか"
    endif
    let g:shaberu_user_define_say_command = store

    return "進捗どうですか"
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
