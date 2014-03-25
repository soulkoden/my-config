set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'aaronj1335/underscore-templates.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'digitaltoad/vim-jade'
Bundle 'gmarik/vundle'
Bundle 'groenewege/vim-less'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'jnwhiteh/vim-golang'
Bundle 'jonathanfilip/lucius'
Bundle 'leafgarland/typescript-vim'
Bundle 'othree/html5.vim'
Bundle 'peterhoeg/vim-qml'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'spf13/PIV'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/csv.vim'

filetype plugin indent on
syn on
set ts=4
set sw=4
set et
set smarttab
set foldmethod=syntax

noremap <Tab> :NERDTreeToggle<CR>

set guioptions-=L
set guioptions-=r

au! BufRead,BufNewFile *.json       set filetype=javascript
au! BufRead,BufNewFile *.twig       set filetype=jinja
au! BufNewFile,BufRead *.ss         set filetype=xhtml
au! BufNewFile,BufRead *.ejs        set filetype=html
au! BufNewFile,BufRead *.json.twig  set filetype=javascript
au! BufNewFile,BufRead *.xml.twig   set filetype=xml

autocmd Filetype javascript set makeprg=node\ %
autocmd Filetype php set makeprg=php\ %
autocmd Filetype less set makeprg=lessc\ %

noremap  <Backspace> :make!<CR>

set nu
"set bg=dark

let g:solarized_termcolors=256
color solarized
