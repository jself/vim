" This scheme was created by CSApproxSnapshot
" on Tue, 05 Mar 2013

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=233 ctermfg=231 gui=NONE guibg=#141414 guifg=#F8F8F8
    CSAHi pythonRawEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=173 gui=bold guibg=bg guifg=#CF7D34
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=khaki4
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=186 gui=bold guibg=bg guifg=khaki3
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=173 gui=underline guibg=bg guifg=#Cf6A4C
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#494949
    CSAHi Todo term=NONE cterm=NONE ctermbg=23 ctermfg=109 gui=NONE guibg=#0E2231 guifg=#7587A6
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#ddf2a4
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#9B859D
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki
    CSAHi CtrlPLinePre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=khaki4
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=233 ctermfg=173 gui=NONE guibg=#141414 guifg=#CF7D34
    CSAHi NonText term=bold cterm=bold ctermbg=233 ctermfg=181 gui=bold guibg=#141414 guifg=#D2A8A1
    CSAHi Directory term=bold cterm=NONE ctermbg=233 ctermfg=144 gui=NONE guibg=#141414 guifg=#8F9D6A
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=52 ctermfg=173 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=173 gui=reverse guibg=#CF6A4C guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=173 ctermfg=52 gui=NONE guibg=#CF6A4C guifg=#420E09
    CSAHi MoreMsg term=bold cterm=bold ctermbg=232 ctermfg=222 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi ModeMsg term=bold cterm=bold ctermbg=232 ctermfg=222 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=109 gui=NONE guibg=#141414 guifg=#7587A6
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
    CSAHi EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=243 gui=NONE guibg=bg guifg=#777777
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=102 ctermfg=231 gui=NONE guibg=#5F5A60 guifg=#F8F8F8
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=180 ctermfg=233 gui=NONE guibg=#CDA869 guifg=#141414
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=137 ctermfg=231 gui=NONE guibg=#9B703F guifg=#F8F8F8
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=193 ctermfg=fg gui=NONE guibg=#DAEFA3 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=144 gui=NONE guibg=White guifg=#8F9D6A
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=Grey40 guifg=fg
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=cornsilk
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=96 gui=NONE guibg=bg guifg=#562D56
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#8B98AB
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#D2A8A1
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=Yellow
    CSAHi Question term=NONE cterm=bold ctermbg=23 ctermfg=109 gui=bold guibg=#0E2231 guifg=#7587A6
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=23 ctermfg=145 gui=bold,reverse guibg=#8693A5 guifg=#0E2231
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=109 ctermfg=231 gui=reverse guibg=#F8F8F8 guifg=#7587A6
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=144 ctermfg=231 gui=reverse guibg=#FFFFFF guifg=#AC885B
    CSAHi Title term=bold cterm=bold ctermbg=23 ctermfg=145 gui=bold guibg=#0E2231 guifg=#8B98AB
    CSAHi Visual term=reverse cterm=NONE ctermbg=152 ctermfg=23 gui=NONE guibg=#AFC4DB guifg=#0E2231
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=52 ctermfg=173 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=23 ctermfg=152 gui=NONE guibg=#0E2231 guifg=#AFC4DB
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=131 gui=NONE guibg=bg guifg=brown
    CSAHi CursorLine term=underline cterm=NONE ctermfg=NONE ctermbg=232 gui=NONE guibg=#0a0a0a guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#A7A7A7 guifg=#F8F8F8
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=233 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=DarkCyan guifg=fg
    CSAHi Error term=reverse cterm=NONE ctermbg=52 ctermfg=173 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#8F9D6A
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=IndianRed
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki1
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=137 gui=NONE guibg=bg guifg=#9B703F
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=khaki3
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=tan
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=khaki3
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=186 gui=NONE guibg=bg guifg=DarkKhaki
    CSAHi Folded term=NONE cterm=NONE ctermbg=238 ctermfg=229 gui=NONE guibg=#494949 guifg=#F9EE98
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=233 ctermfg=255 gui=NONE guibg=#141414 guifg=#F8F8F8
    CSAHi pythonRawEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=215 gui=bold guibg=bg guifg=#CF7D34
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=khaki4
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=229 gui=bold guibg=bg guifg=khaki3
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=210 gui=underline guibg=bg guifg=#Cf6A4C
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#494949
    CSAHi Todo term=NONE cterm=NONE ctermbg=23 ctermfg=146 gui=NONE guibg=#0E2231 guifg=#7587A6
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#ddf2a4
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=182 gui=NONE guibg=bg guifg=#9B859D
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki
    CSAHi CtrlPLinePre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=khaki4
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=233 ctermfg=215 gui=NONE guibg=#141414 guifg=#CF7D34
    CSAHi NonText term=bold cterm=bold ctermbg=233 ctermfg=224 gui=bold guibg=#141414 guifg=#D2A8A1
    CSAHi Directory term=bold cterm=NONE ctermbg=233 ctermfg=150 gui=NONE guibg=#141414 guifg=#8F9D6A
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=88 ctermfg=210 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=210 gui=reverse guibg=#CF6A4C guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=210 ctermfg=88 gui=NONE guibg=#CF6A4C guifg=#420E09
    CSAHi MoreMsg term=bold cterm=bold ctermbg=232 ctermfg=228 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi ModeMsg term=bold cterm=bold ctermbg=232 ctermfg=228 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=146 gui=NONE guibg=#141414 guifg=#7587A6
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
    CSAHi EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=243 gui=NONE guibg=bg guifg=#777777
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=102 ctermfg=255 gui=NONE guibg=#5F5A60 guifg=#F8F8F8
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=222 ctermfg=233 gui=NONE guibg=#CDA869 guifg=#141414
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=179 ctermfg=255 gui=NONE guibg=#9B703F guifg=#F8F8F8
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=230 ctermfg=fg gui=NONE guibg=#DAEFA3 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=150 gui=NONE guibg=White guifg=#8F9D6A
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=Grey40 guifg=fg
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=cornsilk
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=96 gui=NONE guibg=bg guifg=#562D56
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=152 gui=NONE guibg=bg guifg=#8B98AB
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=224 gui=NONE guibg=bg guifg=#D2A8A1
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=Yellow
    CSAHi Question term=NONE cterm=bold ctermbg=23 ctermfg=146 gui=bold guibg=#0E2231 guifg=#7587A6
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=23 ctermfg=146 gui=bold,reverse guibg=#8693A5 guifg=#0E2231
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=146 ctermfg=255 gui=reverse guibg=#F8F8F8 guifg=#7587A6
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=180 ctermfg=255 gui=reverse guibg=#FFFFFF guifg=#AC885B
    CSAHi Title term=bold cterm=bold ctermbg=23 ctermfg=152 gui=bold guibg=#0E2231 guifg=#8B98AB
    CSAHi Visual term=reverse cterm=NONE ctermbg=195 ctermfg=23 gui=NONE guibg=#AFC4DB guifg=#0E2231
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=88 ctermfg=210 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=23 ctermfg=195 gui=NONE guibg=#0E2231 guifg=#AFC4DB
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=brown
    CSAHi CursorLine term=underline cterm=NONE ctermbg=232 ctermfg=fg gui=NONE guibg=#0a0a0a guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=248 ctermfg=255 gui=NONE guibg=#A7A7A7 guifg=#F8F8F8
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=233 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=DarkCyan guifg=fg
    CSAHi Error term=reverse cterm=NONE ctermbg=88 ctermfg=210 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=150 gui=NONE guibg=bg guifg=#8F9D6A
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=IndianRed
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki1
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#9B703F
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki3
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=tan
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=khaki3
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=DarkKhaki
    CSAHi Folded term=NONE cterm=NONE ctermbg=238 ctermfg=230 gui=NONE guibg=#494949 guifg=#F9EE98
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=233 ctermfg=231 gui=NONE guibg=#141414 guifg=#F8F8F8
    CSAHi pythonRawEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=173 gui=bold guibg=bg guifg=#CF7D34
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=101 gui=NONE guibg=bg guifg=khaki4
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=185 gui=bold guibg=bg guifg=khaki3
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=167 gui=underline guibg=bg guifg=#Cf6A4C
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#494949
    CSAHi Todo term=NONE cterm=NONE ctermbg=17 ctermfg=103 gui=NONE guibg=#0E2231 guifg=#7587A6
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=193 gui=NONE guibg=bg guifg=#ddf2a4
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#9B859D
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=khaki
    CSAHi CtrlPLinePre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=101 gui=NONE guibg=bg guifg=khaki4
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=233 ctermfg=173 gui=NONE guibg=#141414 guifg=#CF7D34
    CSAHi NonText term=bold cterm=bold ctermbg=233 ctermfg=181 gui=bold guibg=#141414 guifg=#D2A8A1
    CSAHi Directory term=bold cterm=NONE ctermbg=233 ctermfg=107 gui=NONE guibg=#141414 guifg=#8F9D6A
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=52 ctermfg=167 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=167 gui=reverse guibg=#CF6A4C guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=167 ctermfg=52 gui=NONE guibg=#CF6A4C guifg=#420E09
    CSAHi MoreMsg term=bold cterm=bold ctermbg=232 ctermfg=179 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi ModeMsg term=bold cterm=bold ctermbg=232 ctermfg=179 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=103 gui=NONE guibg=#141414 guifg=#7587A6
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=196 gui=bold guibg=bg guifg=#ff0000
    CSAHi EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=243 gui=NONE guibg=bg guifg=#777777
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=59 ctermfg=231 gui=NONE guibg=#5F5A60 guifg=#F8F8F8
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=179 ctermfg=233 gui=NONE guibg=#CDA869 guifg=#141414
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=95 ctermfg=231 gui=NONE guibg=#9B703F guifg=#F8F8F8
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=193 ctermfg=fg gui=NONE guibg=#DAEFA3 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=231 ctermfg=107 gui=NONE guibg=White guifg=#8F9D6A
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=Grey40 guifg=fg
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=cornsilk
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#562D56
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#8B98AB
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=181 gui=NONE guibg=bg guifg=#D2A8A1
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=222 gui=NONE guibg=bg guifg=khaki
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=226 gui=bold guibg=bg guifg=Yellow
    CSAHi Question term=NONE cterm=bold ctermbg=17 ctermfg=103 gui=bold guibg=#0E2231 guifg=#7587A6
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=17 ctermfg=103 gui=bold,reverse guibg=#8693A5 guifg=#0E2231
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=103 ctermfg=231 gui=reverse guibg=#F8F8F8 guifg=#7587A6
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=137 ctermfg=231 gui=reverse guibg=#FFFFFF guifg=#AC885B
    CSAHi Title term=bold cterm=bold ctermbg=17 ctermfg=103 gui=bold guibg=#0E2231 guifg=#8B98AB
    CSAHi Visual term=reverse cterm=NONE ctermbg=152 ctermfg=17 gui=NONE guibg=#AFC4DB guifg=#0E2231
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=52 ctermfg=167 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=17 ctermfg=152 gui=NONE guibg=#0E2231 guifg=#AFC4DB
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=124 gui=NONE guibg=bg guifg=brown
    CSAHi CursorLine term=underline cterm=NONE ctermbg=232 ctermfg=fg gui=NONE guibg=#0a0a0a guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#A7A7A7 guifg=#F8F8F8
    CSAHi lCursor term=NONE cterm=NONE ctermbg=231 ctermfg=233 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=30 ctermfg=fg gui=NONE guibg=DarkCyan guifg=fg
    CSAHi Error term=reverse cterm=NONE ctermbg=52 ctermfg=167 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=107 gui=NONE guibg=bg guifg=#8F9D6A
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=IndianRed
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=228 gui=NONE guibg=bg guifg=khaki1
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=95 gui=NONE guibg=bg guifg=#9B703F
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=185 gui=NONE guibg=bg guifg=khaki3
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=tan
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=136 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=185 gui=NONE guibg=bg guifg=khaki3
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=143 gui=NONE guibg=bg guifg=DarkKhaki
    CSAHi Folded term=NONE cterm=NONE ctermbg=238 ctermfg=228 gui=NONE guibg=#494949 guifg=#F9EE98
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=79 gui=NONE guibg=#141414 guifg=#F8F8F8
    CSAHi pythonRawEscape term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7587a6
    CSAHi Statement term=bold cterm=bold ctermbg=bg ctermfg=52 gui=bold guibg=bg guifg=#CF7D34
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=khaki4
    CSAHi Type term=underline cterm=bold ctermbg=bg ctermfg=57 gui=bold guibg=bg guifg=khaki3
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=53 gui=underline guibg=bg guifg=#Cf6A4C
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=81 gui=NONE guibg=bg guifg=#494949
    CSAHi Todo term=NONE cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#0E2231 guifg=#7587A6
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=61 gui=NONE guibg=bg guifg=#ddf2a4
    CSAHi Character term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#9B859D
    CSAHi Exception term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=khaki
    CSAHi CtrlPLinePre term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Include term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=khaki4
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=16 ctermfg=52 gui=NONE guibg=#141414 guifg=#CF7D34
    CSAHi NonText term=bold cterm=bold ctermbg=16 ctermfg=53 gui=bold guibg=#141414 guifg=#D2A8A1
    CSAHi Directory term=bold cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#141414 guifg=#8F9D6A
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=16 ctermfg=53 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=16 ctermfg=53 gui=reverse guibg=#CF6A4C guifg=#000000
    CSAHi Search term=reverse cterm=NONE ctermbg=53 ctermfg=16 gui=NONE guibg=#CF6A4C guifg=#420E09
    CSAHi MoreMsg term=bold cterm=bold ctermbg=16 ctermfg=73 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi ModeMsg term=bold cterm=bold ctermbg=16 ctermfg=73 gui=bold guibg=#0a0a0a guifg=#e9c062
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#141414 guifg=#7587A6
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cf6a4c
    CSAHi EasyMotionTargetDefault term=NONE cterm=bold ctermbg=bg ctermfg=64 gui=bold guibg=bg guifg=#ff0000
    CSAHi EasyMotionShadeDefault term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#777777
    CSAHi CursorIM term=NONE cterm=NONE ctermbg=81 ctermfg=79 gui=NONE guibg=#5F5A60 guifg=#F8F8F8
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=53 ctermfg=16 gui=NONE guibg=#CDA869 guifg=#141414
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=36 ctermfg=79 gui=NONE guibg=#9B703F guifg=#F8F8F8
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=61 ctermfg=fg gui=NONE guibg=#DAEFA3 guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=79 ctermfg=37 gui=NONE guibg=White guifg=#8F9D6A
    CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=Grey40 guifg=fg
    CSAHi SpecialComment term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=cornsilk
    CSAHi SpecialChar term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Float term=NONE cterm=NONE ctermbg=bg ctermfg=33 gui=NONE guibg=bg guifg=#562D56
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#8B98AB
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#D2A8A1
    CSAHi Repeat term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=khaki
    CSAHi Label term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#E9C062
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi CursorLineNr term=bold cterm=bold ctermbg=bg ctermfg=76 gui=bold guibg=bg guifg=Yellow
    CSAHi Question term=NONE cterm=bold ctermbg=16 ctermfg=37 gui=bold guibg=#0E2231 guifg=#7587A6
    CSAHi StatusLine term=bold,reverse cterm=bold,reverse ctermbg=16 ctermfg=37 gui=bold,reverse guibg=#8693A5 guifg=#0E2231
    CSAHi StatusLineNC term=reverse cterm=reverse ctermbg=37 ctermfg=79 gui=reverse guibg=#F8F8F8 guifg=#7587A6
    CSAHi VertSplit term=reverse cterm=reverse ctermbg=37 ctermfg=79 gui=reverse guibg=#FFFFFF guifg=#AC885B
    CSAHi Title term=bold cterm=bold ctermbg=16 ctermfg=37 gui=bold guibg=#0E2231 guifg=#8B98AB
    CSAHi Visual term=reverse cterm=NONE ctermbg=58 ctermfg=16 gui=NONE guibg=#AFC4DB guifg=#0E2231
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=16 ctermfg=53 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=16 ctermfg=58 gui=NONE guibg=#0E2231 guifg=#AFC4DB
    CSAHi Debug term=NONE cterm=NONE ctermbg=bg ctermfg=32 gui=NONE guibg=bg guifg=brown
    CSAHi CursorLine term=underline cterm=NONE ctermbg=16 ctermfg=fg gui=NONE guibg=#0a0a0a guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=84 ctermfg=79 gui=NONE guibg=#A7A7A7 guifg=#F8F8F8
    CSAHi lCursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=fg guifg=bg
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=21 ctermfg=fg gui=NONE guibg=DarkCyan guifg=fg
    CSAHi Error term=reverse cterm=NONE ctermbg=16 ctermfg=53 gui=NONE guibg=#420E09 guifg=#CF6A4C
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#8F9D6A
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#CF6A4C
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=IndianRed
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi jediFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Define term=NONE cterm=NONE ctermbg=bg ctermfg=77 gui=NONE guibg=bg guifg=khaki1
    CSAHi Macro term=NONE cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#9B703F
    CSAHi PreCondit term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=khaki3
    CSAHi StorageClass term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=tan
    CSAHi Structure term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=DarkGoldenrod
    CSAHi Typedef term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=khaki3
    CSAHi Tag term=NONE cterm=NONE ctermbg=bg ctermfg=57 gui=NONE guibg=bg guifg=DarkKhaki
    CSAHi Folded term=NONE cterm=NONE ctermbg=81 ctermfg=77 gui=NONE guibg=#494949 guifg=#F9EE98
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=Blue
endif

if 1
    delcommand CSAHi
endif
hi CursorLine ctermfg=NONE
