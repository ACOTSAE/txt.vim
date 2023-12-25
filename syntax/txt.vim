" Plain text syntax file
" Language: text/plain :)
" Author: Francis Niu (https://github.com/flniu)
" Last Change: 2023-8-3

scriptencoding utf-8

if exists("b:current_syntax")
  finish
endif

if has('multi_byte_ime')
    highlight Cursor guibg=DarkRed guifg=NONE
    highlight CursorIM guibg=Orange guifg=NONE
endif

" Optional reuse html syntax
":so $VIMRUNTIME/syntax/html.vim

syn case match

syn keyword txtTodo   TODO FIXME NOTE DEBUG COMMENT NOTICE
syn keyword txtError  ERROR BUG CAUTION WARNING FATAL HOT IMPORTANT
syn keyword txtDone   DONE OK

" ASCII Punctuation Marks
syn match txtEPM '[~\-_+*<>\[\]{}=|#@$%&\\/:&\^\.,!?'"]'
" CJK Punctuation Marks
syn match txtCPM '[，。；：！？、《》【】“”‘’（）『』「」〖〗﹝﹞〔〕〈〉…·—]'
syn match txttable '[─━│┃┄┅┆┇┈┉┊┋┌┍┎┏┐┑┒┓└└┕┖┗┘┙┚┛├├┝┞┟┠┡┢┣┤┥┦┧┨┩┪┫┬┭┮┯┰┱┲┳┴┵┶┷┸┹┺┻┼┽┾┿╀╁╂╃╄╅╆╇╈╉╊╋╌╍╎╏══║╒╓╔╔╔╕╕╖╖╗╗╘╙╚╚╛╛╜╜╝╝╞╟╟╠╡╡╢╢╣╣╤╤╥╥╦╦╧╧╨╨╩╩╪╪╫╬╬╭╮╯╰╴╵╶╷╸╹╺╻╼╽╾╿▏▕—]'

syn match txtNumber '\d\+\(\.\d\+\)\='
syn match txtLink '\<\w\+://\(\w\|[-+&=,?:./*%#]\)\+'

syn cluster txtTagsContains contains=txtNumber,txtEPM,txtCPM,txtLink
syn match txtTags '<[^>]*>'   contains=@txtTagsContains
syn match txtTags '{[^}]*}'   contains=@txtTagsContains
syn match txtTags '\[[^]]*\]' contains=@txtTagsContains
syn match txtTags '【[^】]*】' contains=@txtTagsContains
syn match txtTags '〖[^〗]*〗' contains=@txtTagsContains

syn cluster txtCommentContains contains=txtTodo,txtError,txtDone,txtLink
syn match  txtComment '^\(#\|\/\/\|--\).*$'      contains=@txtCommentContains
syn match  txtComment '\s\zs\(#\|\/\/\|--\)\s.*$'      contains=@txtCommentContains
syn region txtComment start='\/\*' end='\*\/' contains=@txtCommentContains

syn cluster txtQuotedContains contains=txtNumber,txtEPM,txtCPM,txtLink,txtQuoted,txtBracketed
syn match txtQuoted    '\'.*\''  contains=@txtQuotedContains
syn match txtQuoted    '".*"'    contains=@txtQuotedContains
syn match txtQuoted    '《[^》]*》'  contains=@txtQuotedContains
"syn match txtQuoted    '“[^“”]*”'    contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[“]'  end='[”]' end=+$+  contains=@txtQuotedContains
syn match txtQuoted    '『.*』'  contains=@txtQuotedContains
syn match txtQuoted    '﹝[^﹞]*﹞'  contains=@txtQuotedContains
syn match txtQuoted    '〔[^〕]*〕'  contains=@txtQuotedContains
syn match txtQuoted    '〈[^〉]*〉'  contains=@txtQuotedContains
syn match txtQuoted    '「[^」]*」'  contains=@txtQuotedContains
"syn match txtQuoted    '‘.*’'    contains=@txtQuotedContains
syn region txtQuoted    matchgroup=txtCPM  start='[‘]'  end='[’]' end=+$+  contains=@txtQuotedContains
syn region txtBracketed matchgroup=txtCPM  start='[(（]' end='[）)]' end=+$+ contains=@txtQuotedContains

syn cluster txtQuestionContains contains=txtNumber,txtEPM,txtCPM,txtLink
syn match txtQuestion '^\S.\+[:：] *{*$' contains=@txtQuestionContains

syn match txtList '^\s*\zs[-+*]\ze [^ ]'
syn match txtList '^\s*\zs[0-9A-Za-z]\+\.\ze [^ ]'
syn match txtList '^\s*\zs(\?[0-9A-Za-z]\+)\ze [^ ]'
"syn match txtCPM +“.*”+ keepend
"这样匹配

hi link txtTodo       Todo
hi link txtError      Error
hi def  txtDone       ctermbg=Blue ctermfg=Black guibg=#6666FF guifg=Black
hi link txtEPM        Special
hi link txtCPM        Constant
hi link txtNumber     Constant
hi link txtLink       Underlined
hi link txtTags       Identifier
hi link txtComment    Comment
hi link txtQuoted     Statement
hi link txtBracketed  Special
hi link txtQuestion   Question
hi link txtNormal     Normal
hi link txtList       Statement
hi def  txttable      ctermfg=DarkGreen guifg=DarkGreen

let b:current_syntax = 'txt'
" vim:et:ts=2:sw=2:fdm=marker:
