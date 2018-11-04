" pathogen
  let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
  call pathogen#infect()                      " load everyhting else
  call pathogen#helptags()                    " load plugin help files
"syntastic
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_aggregate_errors = 1

  let g:syntastic_puppet_puppetlint_args = "--no-80chars-check --no-arrow_on_right_operand_line-check --no-140chars-check --no-puppet_url_without_modules-check"
" code folding
  set foldmethod=indent
  set foldlevel=2
  set foldnestmax=4
" indentation
  set autoindent
  set softtabstop=4 shiftwidth=4 expandtab
" visual
  highlight Normal ctermbg=black
  set background=dark
  set cursorline
  set t_Co=256
" syntax highlighting
  syntax on
  filetype on                 " enables filetype detection
  filetype plugin indent on   " enables filetype specific plugins
" lusty
  set hidden
  let g:LustyJugglerSuppressRubyWarning = 1
" supertab
  au FileType python set omnifunc=pythoncomplete#Complete
  let g:SuperTabDefaultCompletionType = "context"
  set completeopt=menuone,longest,preview"
