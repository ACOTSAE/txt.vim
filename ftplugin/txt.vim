" Plain text filetype plugin
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2017-07-31

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let g:disable_large_line_number = 0

let g:line_number_limit = 1000

let g:txt_enble_wrap = 1

let g:define_fold = 0

let g:check_ok = 0

if g:disable_large_line_number && (line('$') >= g:line_number_limit)
  set nonumber
endif

if g:txt_enble_wrap
  set wrap
endif

if g:define_fold
  set fdm=marker cms=
endif

if g:check_ok
  function ToggleChecklistItem()
    if match(getline('.'), ' OK$') == -1
      silent s/$/ OK/
    else
      silent s/ OK$//
    endif
  endfunction
  nnoremap <buffer><silent> <Leader><Space> :call ToggleChecklistItem()<CR>
endif

" vim:et:ts=2:sw=2:fdm=marker:
