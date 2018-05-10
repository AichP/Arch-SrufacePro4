highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'breezy2'

if(&background == "gray")
    hi Normal        ctermbg=NONE ctermfg=white gui=NONE
else
    hi Normal        ctermbg=NONE ctermfg=white gui=NONE
endif

hi LineNr        ctermbg=NONE ctermfg=darkgray gui=NONE
hi FoldColumn    ctermbg=NONE ctermfg=gray gui=NONE
hi Folded        ctermbg=NONE ctermfg=gray gui=NONE
hi MatchParen    ctermbg=NONE ctermfg=white gui=NONE
hi signColumn    ctermbg=NONE ctermfg=gray gui=NONE

hi Comment        ctermbg=NONE    ctermfg=gray gui=NONE
hi Conceal        ctermbg=NONE    ctermfg=white gui=NONE
hi Constant       ctermbg=NONE    ctermfg=yellow gui=NONE
hi Boolean        ctermbg=NONE    ctermfg=green gui=NONE
hi Debug          ctermbg=NONE    ctermfg=green gui=bold
hi Error          ctermbg=NONE	  ctermfg=red gui=bold
hi Identifier     ctermbg=NONE    ctermfg=magenta gui=NONE
hi Ignore         ctermbg=NONE    ctermfg=NONE    gui=NONE
hi Operator       ctermbg=NONE    ctermfg=NONE    gui=bold
hi PreProc        ctermbg=NONE    ctermfg=green gui=NONE
hi Special        ctermbg=NONE    ctermfg=blue gui=NONE
hi SpecialComment ctermbg=NONE    ctermfg=white gui=NONE
hi Statement      ctermbg=NONE    ctermfg=yellow gui=bold
hi String         ctermbg=NONE    ctermfg=blue gui=NONE
hi Todo           ctermbg=black ctermfg=yellow gui=NONE
hi Type           ctermbg=NONE    ctermfg=blue gui=NONE
hi Underlined     ctermbg=NONE    ctermfg=green gui=underline

hi NonText       ctermbg=NONE    ctermfg=NONE gui=NONE

hi Pmenu         ctermbg=black ctermfg=white gui=NONE
hi PmenuSbar     ctermbg=white ctermfg=NONE    gui=NONE
hi PmenuSel      ctermbg=black ctermfg=white gui=NONE
hi PmenuThumb    ctermbg=black ctermfg=white gui=NONE

hi ErrorMsg      ctermbg=black ctermfg=red gui=bold
hi ModeMsg       ctermbg=NONE    ctermfg=NONE    gui=bold
hi MoreMsg       ctermbg=NONE    ctermfg=yellow gui=bold
hi Question      ctermbg=NONE    ctermfg=yellow gui=bold
hi WarningMsg    ctermbg=NONE    ctermfg=red gui=NONE

hi TabLine       ctermbg=NONE ctermfg=gray gui=NONE
hi TabLineFill   ctermbg=NONE ctermfg=NONE    gui=NONE
hi TabLineSel    ctermbg=NONE ctermfg=NONE    gui=NONE

hi Cursor        ctermbg=NONE    ctermfg=NONE    gui=reverse
hi CursorColumn  ctermbg=black ctermfg=NONE    gui=NONE
hi CursorLineNr  ctermbg=black ctermfg=white gui=NONE
hi CursorLine    ctermbg=black ctermfg=NONE    gui=NONE

hi helpLeadBlank ctermbg=NONE    ctermfg=NONE    gui=NONE
hi helpNormal    ctermbg=NONE    ctermfg=NONE    gui=NONE

hi StatusLine    ctermbg=NONE ctermfg=NONE    gui=NONE
hi StatusLineNC  ctermbg=gray ctermfg=gray gui=NONE

hi Visual        ctermbg=black ctermfg=NONE    gui=NONE
hi VisualNOS     ctermbg=NONE    ctermfg=NONE    gui=underline

hi VertSplit     ctermbg=NONE ctermfg=NONE gui=NONE
hi WildMenu      ctermbg=NONE    ctermfg=NONE    gui=NONE

hi SpecialKey    ctermbg=NONE    ctermfg=gray gui=NONE
hi Title         ctermbg=NONE    ctermfg=white gui=NONE

hi DiffAdd       ctermbg=green ctermfg=NONE    gui=NONE
hi DiffChange    ctermbg=magenta ctermfg=NONE    gui=NONE
hi DiffDelete    ctermbg=gray ctermfg=NONE    gui=NONE
hi DiffText      ctermbg=NONE    ctermfg=NONE    gui=reverse

hi IncSearch     ctermbg=green ctermfg=white gui=NONE
hi Search        ctermbg=green ctermfg=white gui=NONE

hi Directory     ctermbg=NONE    ctermfg=white gui=NONE

hi SpellBad      ctermbg=NONE    ctermfg=white cterm=underline
hi SpellCap      ctermbg=NONE    ctermfg=red    cterm=bold
hi SpellLocal    ctermbg=NONE    ctermfg=gray    gui=bold
hi SpellRare     ctermbg=NONE    ctermfg=NONE    gui=undercurl

hi ColorColumn   ctermbg=NONE ctermfg=NONE    gui=NONE

" general ---------------------------------------------------------------------

hi link Character      String
hi link Conditional    Statement
hi link Define         Type
hi link Delimiter      Normal
hi link Exception      Statement
hi link Float          Number
hi link Function       Normal
hi link HelpCommand    Statement
hi link HelpExample    Statement
hi link Include        PreProc
hi link Keyword        Operator
hi link Label          Type
hi link Macro          PreProc
hi link Number         Constant
hi link PreCondit      PreProc
hi link Repeat         Statement
hi link SpecialChar    Special
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type

" html -----------------------------------------------------------------------

hi link htmlBold    Normal
hi link htmlItalic  Normal
hi link htmlTag     PreProc
hi link htmlEndTag  PreProc
hi link htmlTagName Operator
hi link htmlTagN    Operator
hi link htmlArg     PreProc
hi link htmlEvent   PreProc

" CSS ------------------------------------------------------------------------

hi link cssClassName  Type
hi link cssProp Operator
hi link cssDefinition Operator

" Typescript -----------------------------------------------------------------

hi link typescriptImport PreProc
hi link typescriptExport PreProc
hi link typescriptDecorator Type
hi link typescriptMemberVariableDeclaration Type
hi link typescriptCall Type
hi link typescriptTypeReference Normal
hi link typescriptEndColons Normal

" diff msgs ------------------------------------------------------------------

hi link diffBDiffer   WarningMsg
hi link diffCommon    WarningMsg
hi link diffDiffer    WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA       WarningMsg
hi link diffNoEOL     WarningMsg
hi link diffOnly      WarningMsg
hi link diffRemoved   WarningMsg
hi link diffAdded     String

" markdown -------------------------------------------------------------------
hi markdownH1         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownH2         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownH3         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownH4         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownH5         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownH6         ctermbg=NONE ctermfg=magenta gui=bold
hi markdownLineBreak  ctermbg=NONE ctermfg=gray gui=underline
hi markdownItalic     ctermbg=NONE ctermfg=NONE    gui=italic
hi markdownBold       ctermbg=NONE ctermfg=NONE    gui=bold
hi markdownBoldItalic ctermbg=NONE ctermfg=NONE    gui=bold,italic

hi link markdownHeadingDelimiter  Comment
hi link markdownLinkText          PreProc
hi link markdownUrl               PreProc
hi link markdownCode              Constant
hi link markdownCodeBlock         Constant
hi link markdownCodeDelimiter     Comment
hi link markdownOrderedListMarker Statement
hi link markdownListMarker        Statement
hi link markdownBlockquote        Special
hi link markdownRule              Special

" python ---------------------------------------------------------------------
hi pythonBuiltin ctermbg=NONE ctermfg=white gui=NONE
hi link pythonImport        PreProc
hi link pythonFunction      Normal
hi link pythonExceptions    PreProc

" custom:
hi pythonMagic    ctermbg=NONE ctermfg=magenta gui=NONE
hi link pythonDef            Operator
hi link pythonDocstring      Comment
hi link pythonSpecial        Boolean
hi link pythonDecorator      Type
hi link pythonAs             PreProc

" c / cpp --------------------------------------------------------------------

hi link cppStatement Operator
hi link cIncluded cInclude

" PLUGINS --------------------------------------------------------------------

hi AleErrorSign   ctermbg=gray ctermfg=cyan gui=NONE
hi AleWarningSign ctermbg=gray ctermfg=cyan gui=NONE
