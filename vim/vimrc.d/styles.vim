set list  " Shows invisible characters
set listchars=tab:▸\ ,eol:¬

" Disable wordwrap
set nowrap

let base16colorspace=256
set t_Co=256
set background=dark
set colorcolumn=80
colorscheme tender
"
let g:indentobject_meaningful_indentation = ['haml', 'sass', 'yaml', 'markdown']
let g:indentLine_fileType = ['yaml']

autocmd! VimResized
autocmd VimResized * :wincmd =

" Enable True Colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
