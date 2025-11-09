"line numbers
set number
highlight LineNr term=bold cterm=NONE ctermfg=16 ctermbg=17 gui=NONE

"file end (~)
highlight EndOfBuffer ctermfg=16 ctermbg=16

"statusline
set laststatus=2
set statusline=
set noshowmode

let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'VISUAL (LINE) ',
       \ "\<C-V>" : 'VISUAL (BLOCK) ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'REPLACE ',
       \ 'Rv' : 'REPLACE ',
       \ 'c'  : 'COMMAND ',
       \}

hi statuslinenumberhi ctermfg=0 ctermbg=16 
hi statuslinemodehi ctermfg=0 ctermbg=17

set statusline+=%#statuslinenumberhi#
set statusline+=%3.3l\ 
set statusline+=%#statuslinemodehi#
set statusline+=%{g:currentmode[mode()]}
set statusline+=%=%F%{&modified?'*':''}
