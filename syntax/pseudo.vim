if exists('b:current_syntax') | finish | endif

syn keyword pseudoStatement     Function Procedure Class function func procedure class error nextgroup=pseudoFunction skipwhite
syn keyword pseudoPrint         print Print
syn match   pseudoFunction      "[a-zA-z][a-zA-Z0-9_]*" display contained
syn keyword pseudoFunction      add sum length append remove pop size insert indexOf let
syn keyword pseudoConditional   if else endif elif
syn keyword pseudoRepeat        for to while foreach endfor endwhile endforeach return pass break each try catch
syn keyword pseudoOperator      and in is not or do then to
syn keyword pseudoBuiltIn       String List Int Float Double Array Long Dictionary Dict ArrayList string list int float double array long dictionary dict arraylist 
syn keyword pseudoBoolean       True False true false

syn region  pseudoString        start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend
syn region  pseudoString        start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend

syn match   pseudoComment       '//.*$' display

syn match   pseudoNumber        '\<\d\>' display
syn match   pseudoNumber        '\<[1-9][_0-9]*\d\>' display
syn match   pseudoNumber        '\<\d[jJ]\>' display
syn match   pseudoNumber        '\<[1-9][_0-9]*\d[jJ]\>' display

syn match   pseudoFloat         '\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=\>' display
syn match   pseudoFloat         '\<\d\%([_0-9]*\d\)\=[eE][+-]\=\d\%([_0-9]*\d\)\=[jJ]\=\>' display
syn match   pseudoFloat         '\<\d\%([_0-9]*\d\)\=\.\d\=\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=' display

hi def link pseudoNumber        Number
hi def link pseudoFloat         Float
hi def link pseudoString        String
hi def link pseudoStatement     Statement
hi def link pseudoPrint         Special 
hi def link pseudoFunction      Function
hi def link pseudoConditional   Conditional
hi def link pseudoRepeat        Repeat
hi def link pseudoOperator      Operator
hi def link pseudoBuiltIn       Type 
hi def link pseudoString        String
hi def link pseudoBoolean       Boolean
hi def link pseudoComment       Comment

let b:current_syntax = 'pseudo'
