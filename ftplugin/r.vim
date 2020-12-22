let R_nvim_wd = 1
let R_clear_line = 1
let R_setwidth = 2
let R_tmpdir = "/tmp/Nvim-R-" . strftime("%Y%m%d%H%M%S")

let R_assign_map = '<M-->'

nmap <silent> <LocalLeader>vl :call g:SendCmdToR("devtools::load_all()")<CR>
nmap <silent> <LocalLeader>vt :call g:SendCmdToR("devtools::test()")<CR>
nmap <silent> <LocalLeader>vc :call g:SendCmdToR("devtools::check()")<CR>
