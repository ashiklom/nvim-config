setlocal tabstop=2
setlocal completeopt-=preview


"let R_assign_map = '<M-->'
let R_assign = 0
let R_nvim_wd = 1
let R_clear_line = 1
let R_complete = 2
let R_setwidth = 2
let R_tmpdir = "/tmp/Nvim-R-" . strftime("%Y%m%d%H%M%S")

inoremap <buffer> <silent> <M--> <C-O>:call ReplaceUnderS()<CR>
inoremap <buffer> <M-m> <space>%>%
