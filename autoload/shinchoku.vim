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


let s:is_shaberu = exists(':ShaberuSay') == 2 ? 1 : 0
let s:shinchoku_str = "進捗どうですか"
let s:no_shinchoku_counter = 0
let g:shinchoku#say_command = get(g:, 'shinchoku#say_command', '')

function! shinchoku#get_shinchoku_str()
    let s:no_shinchoku_counter += 1

    if s:no_shinchoku_counter % 2 == 0
        let s:shinchoku_str .= '!'
    endif

    return s:shinchoku_str
endfunction

function! shinchoku#ask_shinchoku()
    if s:is_shaberu != 1
        return
    endif

    if g:shinchoku#say_command != ''
        let store = g:shaberu_user_define_say_command
        ShaberuSay "進捗どうですか"
        let g:shaberu_user_define_say_command = store
    else
        ShaberuSay "進捗どうですか"
    endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
