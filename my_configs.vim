set fileencodings=utf-8,koi8-r,cp1251,cp866
let g:tex_no_math=1
colorscheme symfony

if &term =~ "xterm"
    " 256 colors
    let &t_Co = 256
    " restore screen after quitting
    let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
    let &t_te = "\<Esc>[?47l\<Esc>8"
    if has("terminfo")
        let &t_Sf = "\<Esc>[3%p1%dm"
        let &t_Sb = "\<Esc>[4%p1%dm"
    else
        let &t_Sf = "\<Esc>[3%dm"
        let &t_Sb = "\<Esc>[4%dm"
    endif
endif

autocmd vimenter * if !argc() | NERDTree | endif
