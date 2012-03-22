" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guibg=#AE81FF
hi Character       guibg=#E6DB74
hi Number          guibg=#AE81FF
hi String          guibg=#E6DB74
hi Conditional     guibg=#F92672               gui=bold
hi Constant        guibg=#AE81FF               gui=bold
hi Cursor          guibg=#000000 guifg=#F8F8F0
hi Debug           guibg=#BCA3A3               gui=bold
hi Define          guibg=#66D9EF
hi Delimiter       guibg=#8F8F8F
hi DiffAdd                       guifg=#13354A
hi DiffChange      guibg=#89807D guifg=#4C4745
hi DiffDelete      guibg=#960050 guifg=#1E0010
hi DiffText                      guifg=#4C4745 gui=italic,bold

hi Directory       guibg=#A6E22E               gui=bold
hi Error           guibg=#960050 guifg=#1E0010
hi ErrorMsg        guibg=#F92672 guifg=#232526 gui=bold
hi Exception       guibg=#A6E22E               gui=bold
hi Float           guibg=#AE81FF
hi FoldColumn      guibg=#465457 guifg=#000000
hi Folded          guibg=#465457 guifg=#000000
hi Function        guibg=#A6E22E
hi Identifier      guibg=#FD971F
hi Ignore          guibg=#808080 guifg=bg
hi IncSearch       guibg=#C4BE89 guifg=#000000

hi Keyword         guibg=#F92672               gui=bold
hi Label           guibg=#E6DB74               gui=none
hi Macro           guibg=#C4BE89               gui=italic
hi SpecialKey      guibg=#66D9EF               gui=italic

hi MatchParen      guibg=#000000 guifg=#FD971F gui=bold
hi ModeMsg         guibg=#E6DB74
hi MoreMsg         guibg=#E6DB74
hi Operator        guibg=#F92672

" complete menu
hi Pmenu           guibg=#66D9EF guifg=#000000
hi PmenuSel                      guifg=#808080
hi PmenuSbar                     guifg=#080808
hi PmenuThumb      guibg=#66D9EF

hi PreCondit       guibg=#A6E22E               gui=bold
hi PreProc         guibg=#A6E22E
hi Question        guibg=#66D9EF
hi Repeat          guibg=#F92672               gui=bold
hi Search          guibg=#FFFFFF guifg=#455354
" marks column
hi SignColumn      guibg=#A6E22E guifg=#232526
hi SpecialChar     guibg=#F92672               gui=bold
hi SpecialComment  guibg=#465457               gui=bold
hi Special         guibg=#66D9EF guifg=bg      gui=italic
hi SpecialKey      guibg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guibg=#F92672               gui=bold
hi StatusLine      guibg=#455354 guifg=fg
hi StatusLineNC    guibg=#808080 guifg=#080808
hi StorageClass    guibg=#FD971F               gui=italic
hi Structure       guibg=#66D9EF
hi Tag             guibg=#F92672               gui=italic
hi Title           guibg=#ef5939
hi Todo            guibg=#FFFFFF guifg=bg      gui=bold

hi Typedef         guibg=#66D9EF
hi Type            guibg=#66D9EF               gui=none
hi Underlined      guibg=#808080               gui=underline

hi VertSplit       guibg=#808080 guifg=#080808 gui=bold
hi VisualNOS                     guifg=#403D3D
hi Visual                        guifg=#403D3D
hi WarningMsg      guibg=#FFFFFF guifg=#333333 gui=bold
hi WildMenu        guibg=#66D9EF guifg=#000000

if s:molokai_original == 1
   hi Normal          guibg=#F8F8F2 guifg=#272822
   hi Comment         guibg=#75715E
   hi CursorLine                    guifg=#3E3D32
   hi CursorColumn                  guifg=#3E3D32
   hi LineNr          guibg=#BCBCBC guifg=#3B3A32
   hi NonText         guibg=#BCBCBC guifg=#3B3A32
else
   hi Normal          guibg=#F8F8F2 guifg=#1B1D1E
   hi Comment         guibg=#465457
   hi CursorLine                    guifg=#293739
   hi CursorColumn                  guifg=#293739
   hi LineNr          guibg=#BCBCBC guifg=#232526
   hi NonText         guibg=#BCBCBC guifg=#232526
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          ctermfg=252 ctermbg=233
   hi Comment         ctermfg=59
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=234
   hi NonText         ctermfg=250 ctermbg=234
end
