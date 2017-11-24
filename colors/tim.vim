" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:Tim Foster	
" Last Change:Tue July 21 22:50 2007 EST GMT-5:00

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tim"
hi Bracket			ctermfg=White
hi Comment			ctermfg=DarkBlue										guifg=Blue
hi Conditional		ctermfg=Yellow
hi Constant			ctermfg=DarkCyan										guifg=DarkCyan
hi Cursor			ctermfg=Black	ctermbg=Grey						guifg=bg			guibg=Green
hi Define			ctermfg=Yellow											guifg=Blue		guibg=Yellow
hi Directory																	guifg=Blue
hi Error				ctermfg=Red		ctermbg=Black						guifg=Red		guibg=Black
hi ErrorMsg			ctermfg=White	ctermbg=Blue						guifg=White		guibg=Red
hi FoldColumn		ctermfg=Black	ctermbg=Grey						guifg=Black		guibg=DarkGrey
hi Folded			ctermfg=Black	ctermbg=Grey						guifg=Black
hi Function			ctermfg=Magenta										guifg=Blue		guibg=Yellow
hi Identifier		ctermfg=Cyan											guifg=Cyan
hi Label				ctermfg=Green						cterm=bold		guifg=Blue		guibg=Yellow
hi LineNr			ctermfg=Brown											guifg=Yellow
hi ModeMsg																		guifg=White		guibg=Blue	gui=bold
hi MoreMsg																		guifg=SeaGreen	gui=bold
hi Normal			ctermfg=White						cterm=none		guifg=White
hi NonText																		guifg=Blue		gui=bold
hi Operator			ctermfg=White											guifg=Blue		guibg=Yellow
hi PreProc			ctermfg=DarkMagenta									guifg=DarkMagenta
hi Question																		guifg=Green		gui=bold
hi Repeat			ctermfg=Yellow											guifg=Blue		guibg=Yellow
hi Search																		guifg=White		guibg=Red
hi Special			ctermfg=Yellow											guifg=Orange
hi SpecialKey																	guifg=Blue
hi Statement		ctermfg=Brown						cterm=none		guifg=DarkYellow	gui=bold
hi StatusLine		ctermfg=White	ctermbg=Blue	cterm=none		guifg=White		guibg=Blue	gui=bold
hi StatusLineNC	ctermfg=Grey	ctermbg=Blue	cterm=none		guifg=White		guibg=Blue	gui=NONE
hi String			ctermfg=DarkRed										guifg=Red
hi Tag				ctermfg=Cyan	ctermbg=None						guifg=Blue		guibg=Yellow
hi Title																			guifg=Magenta	gui=bold
hi Todo				ctermfg=Red		ctermbg=Blue						guifg=Blue		guibg=Yellow
hi Type				ctermfg=DarkGreen					cterm=none		guifg=Green		gui=italic
hi VertSplit																	guifg=White		guibg=Blue	gui=bold
hi Visual													cterm=reverse						gui=reverse
hi WarningMsg																	guifg=Red
hi WhitespaceEOL						ctermbg=red 											guibg=red
hi Keyword			ctermfg=yellow											guifg=Blue		guibg=Yellow

hi link IncSearch	Visual
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Constant
hi link Structure	Type
hi link SpecialChar	Constant
hi link PreCondit	PreProc
hi link Macro	PreProc
hi link Include	PreProc

"These terms are apparently never used.  If they pop up they're going to be pretty gaudy.
"There's a red bracket on line 134 of wstdio.c that I don't get
"
hi Exception		ctermfg=magenta	ctermbg=red				guifg=Blue		guibg=Yellow
"hi StorageClass	ctermfg=magenta	ctermbg=yellow			guifg=Blue		guibg=YellowType "overrides consts, shouldn't
hi Typedef			ctermfg=magenta	ctermbg=red				guifg=Blue		guibg=Yellow
"hi Delimiter		ctermfg=magenta	ctermbg=blue			guifg=Blue		guibg=Yellow "Angle brackets, sometimes
hi SpecialComment	ctermfg=magenta	ctermbg=red				guifg=Blue		guibg=Yellow
hi Debug				ctermfg=magenta	ctermbg=red				guifg=Blue		guibg=Yellow


"Toggle semicolon matching at the end of lines, author unknown!
nmap <silent> <leader>sc :call ToggleSemicolonHighlighting()<cr>
"{{{
function! ToggleSemicolonHighlighting()
	if exists("b:semicolon")
		unlet b:semicolon
		hi semicolon guifg=NONE gui=NONE ctermfg=NONE
	else
		syn match semicolon #;$#
		hi semicolon guifg=red gui=bold ctermfg=1
		let b:semicolon = 1
	endif
endfunction
"}}}
