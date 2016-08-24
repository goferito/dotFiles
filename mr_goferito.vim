" Vim color file - mr_goferito

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "mr_goferito"

" Normal
hi Normal ctermfg=249 ctermbg=016 cterm=NONE

" Tags,function names
hi Identifier ctermfg=6 ctermbg=NONE cterm=NONE

" Comments
hi Comment ctermfg=239 ctermbg=NONE cterm=NONE

" TODO,FIXME
hi Todo ctermfg=0 ctermbg=184 cterm=NONE

" Strings
hi string ctermfg=172 ctermbg=NONE cterm=NONE
hi stringdelimiter ctermfg=101 ctermbg=NONE cterm=NONE

" import,from,export,default
hi Include ctermfg=12 ctermbg=NONE cterm=bold

" Ruler
hi LineNr ctermfg=22 ctermbg=232 cterm=NONE

" const,let,var
hi StorageClass ctermfg=34 ctermbg=NONE cterm=bold

" @param,this
hi Special ctermfg=165 ctermbg=NONE cterm=NONE

" return
hi Statement ctermfg=79 ctermbg=NONE cterm=NONE

" Docs arg names
hi Label ctermfg=240 ctermbg=NONE cterm=bold

" true,false
hi Boolean ctermfg=31 ctermbg=NONE cterm=NONE

" Numbers
hi Number ctermfg=31 ctermbg=NONE cterm=NONE

" =+-*/
hi Operator ctermfg=79 ctermbg=NONE cterm=NONE

" Highlighted line(NTree,CtrlP)
hi CursorLine ctermfg=112 ctermbg=234 cterm=NONE

" className,function,=>
hi Type ctermfg=28 ctermbg=NONE cterm=NONE

" Foders in NTree
hi Directory ctermfg=67 ctermbg=NONE cterm=NONE

" Match while type search
hi IncSearch ctermfg=0 ctermbg=11 cterm=NONE

" Search matches
hi Search ctermfg=9 ctermbg=236 cterm=underline


" -------------------------------
" Stuff I don't know what changes
" -------------------------------
"hi WildMenu ctermfg=9 ctermbg=NONE cterm=NONE
"hi CTagsMember ctermfg=9 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant ctermfg=9 ctermbg=NONE cterm=NONE
"hi Ignore ctermfg=9 ctermbg=NONE cterm=NONE
"hi CTagsImport ctermfg=9 ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpellRare ctermfg=9 ctermbg=NONE cterm=NONE
"hi EnumerationValue ctermfg=9 ctermbg=NONE cterm=NONE
"hi Float ctermfg=9 ctermbg=NONE cterm=NONE
"hi Union ctermfg=9 ctermbg=NONE cterm=NONE
"hi Question ctermfg=9 ctermbg=NONE cterm=NONE
"hi WarningMsg ctermfg=9 ctermbg=NONE cterm=NONE
"hi VisualNOS ctermfg=9 ctermbg=NONE cterm=NONE
"hi ModeMsg ctermfg=9 ctermbg=NONE cterm=NONE
"hi EnumerationName ctermfg=9 ctermbg=NONE cterm=NONE
"hi MoreMsg ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpellCap ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpellLocal ctermfg=9 ctermbg=NONE cterm=NONE
"hi DefinedName ctermfg=9 ctermbg=NONE cterm=NONE
"hi LocalVariable ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpellBad ctermfg=9 ctermbg=NONE cterm=NONE
"hi CTagsClass ctermfg=9 ctermbg=NONE cterm=NONE
"hi Underlined ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpecialChar ctermfg=9 ctermbg=NONE cterm=NONE
"hi Character ctermfg=9 ctermbg=NONE cterm=NONE
"hi SignColumn ctermfg=9 ctermbg=238 cterm=NONE
"hi Typedef ctermfg=9 ctermbg=NONE cterm=NONE
"hi Title ctermfg=9 ctermbg=NONE cterm=bold
"hi Folded ctermfg=9 ctermbg=238 cterm=NONE
"hi PreCondit ctermfg=9 ctermbg=NONE cterm=NONE
"hi TabLineSel ctermfg=9 ctermbg=255 cterm=NONE
"hi StatusLineNC ctermfg=9 ctermbg=234 cterm=NONE
"hi NonText ctermfg=9 ctermbg=233 cterm=NONE
"hi DiffText ctermfg=9 ctermbg=17 cterm=NONE
"hi ErrorMsg ctermfg=9 ctermbg=88 cterm=NONE
"hi Debug ctermfg=9 ctermbg=NONE cterm=NONE
"hi PMenuSbar ctermfg=9 ctermbg=102 cterm=NONE
"hi Conditional ctermfg=9 ctermbg=NONE cterm=NONE
"hi StatusLine ctermfg=9 ctermbg=233 cterm=NONE
"hi PMenuSel ctermfg=9 ctermbg=255 cterm=NONE
"hi Delimiter ctermfg=9 ctermbg=NONE cterm=NONE
"hi TabLineFill ctermfg=9 ctermbg=NONE cterm=NONE
"hi constant ctermfg=9 ctermbg=NONE cterm=NONE
"hi function ctermfg=9 ctermbg=NONE cterm=NONE
"hi DiffDelete ctermfg=9 ctermbg=52 cterm=NONE
"hi CursorColumn ctermfg=9 ctermbg=234 cterm=NONE
"hi Define ctermfg=9 ctermbg=NONE cterm=NONE
"hi FoldColumn ctermfg=9 ctermbg=238 cterm=NONE
"hi PreProc ctermfg=9 ctermbg=NONE cterm=NONE
"hi Visual ctermfg=9 ctermbg=238 cterm=NONE
"hi vertsplit ctermfg=9 ctermbg=234 cterm=none
"hi exception ctermfg=9 ctermbg=none cterm=none
"hi keyword ctermfg=9 ctermbg=none cterm=none
"hi diffchange ctermfg=9 ctermbg=234 cterm=none
"hi Cursor ctermfg=9 ctermbg=153 cterm=NONE
"hi Error ctermfg=9 ctermbg=88 cterm=NONE
"hi PMenu ctermfg=9 ctermbg=NONE cterm=NONE
"hi SpecialKey ctermfg=9 ctermbg=236 cterm=NONE
"hi Tag ctermfg=9 ctermbg=NONE cterm=NONE
"hi PMenuThumb ctermfg=9 ctermbg=248 cterm=NONE
"hi MatchParen ctermfg=9 ctermbg=108 cterm=bold
"hi Repeat ctermfg=9 ctermbg=NONE cterm=NONE
"hi Structure ctermfg=9 ctermbg=NONE cterm=NONE
"hi Macro ctermfg=9 ctermbg=NONE cterm=NONE
"hi DiffAdd ctermfg=9 ctermbg=23 cterm=NONE
"hi TabLine ctermfg=9 ctermbg=7 cterm=NONE
"hi cursorim ctermfg=9 ctermbg=60 cterm=NONE
