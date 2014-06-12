m4_include(vim/common)

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
