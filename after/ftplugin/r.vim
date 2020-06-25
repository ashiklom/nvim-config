setlocal tabstop=2
setlocal completeopt-=preview

inoremap <buffer> <silent> <M--> <C-O>:call ReplaceUnderS()<CR>
inoremap <buffer> <M-m> <space>%>%
