set list  " Shows invisible characters
set listchars=tab:▸\ ,eol:¬

" Disable wordwrap
set nowrap

let base16colorspace=256
set t_Co=256
set background=dark
set colorcolumn=80
colorscheme hybrid_material
"
let g:indentobject_meaningful_indentation = ['haml', 'sass', 'yaml', 'markdown']
let g:indentLine_fileType = ['yaml']

autocmd! VimResized
autocmd VimResized * :wincmd =
