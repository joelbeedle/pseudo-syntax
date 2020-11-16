if exists('b:current_syntax') | finish | endif

syn keyword pseudoStatement     Function Procedure Class nextgroup=pseudoFunction skipwhite
syn keyword pseudoStatement     print
syn match pseudoFunction        "[a-zA-z][a-zA-Z0-9_]*" display contained
syn keyword pseudoConditional   if else endif
syn keyword pseudoRepeat        for while foreach endfor endwhile endforeach return pass break to
syn keyword pseudoOperator      and in is not or do then
syn keyword pseudoBuiltIn       String List Int Float Double Array
syn keyword pseudoBoolean       true false

syn region pseudoString start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ keepend contained
syn region pseudoString start=+"+ skip=+\\\\\|\\'\|\\$+ excludenl end=+"+ keepend contained

syn match pseudoNumber "\<\d\>" display
syn match pseudoNumber "\<[1-9]\d\+\>" display
syn match pseudoNumber "\<\d\+[jJ]\>" display

syn match pseudoFloat "\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>" display

hi def link pseudoFloat         Float
hi def link pseudoString        String
hi def link pseudoStatement     Statement
hi def link pseudoFunction      Function
hi def link pseudoConditional   Conditional
hi def link pseudoRepeat        Repeat
hi def link pseudoOperator      Operator
hi def link pseudoBuiltIn       Structure
hi def link pseudoString        String
hi def link pseudoBoolean       Boolean

let b:current_syntax = 'pseudo'
