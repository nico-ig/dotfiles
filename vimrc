set     tabstop =2  " Width of tab character
set softtabstop =2  " Fine tunes the amount of white space to be added
set  shiftwidth =2  " Determines the amount of whitespace to add in normal mode
set   scrolloff =5
set colorcolumn =79 " Show ruller at collum 80

set expandtab       " Uses space instead of tabs
set autoindent
set nu              " Enable numbered columns

syntax on           " Enable highlight
highlight ColorColumn ctermbg=0 guibg=lightgrey

nnoremap  <C-L>   <C-W><C-L>
nnoremap  <C-H>   <C-W><C-H>
nnoremap  <C-J>   <C-W><C-J>
nnoremap  <C-K>   <C-W><C-K>
nnoremap  <C-P>   :Ex<CR>

if has("autocmd")

  " Automatic change between relative and absolute line numbers
  augroup numbertoggle
    autocmd!
  
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu | endif
  
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set nornu | endif
  augroup END

  " Load indentantion rules and plugins according to the detected filetype
  filetype plugin indent on

  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

endif


" guard for distributions lacking the 'persistent_undo' feature
if has('persistent_undo')
  
  " define a path to store persistent undo files
  let undo_path = expand('~/.config/vim/undo')

  " if the location does not exist
  if ! isdirectory(undo_path)
    call system('mkdir -p ' . undo_path)
  endif    

  " point Vim to the defined undo directory.  
  let &undodir = undo_path  

  " finally, enable undo persistence.
  set undofile

endif


" define a path to store backup files
let backup_path = expand('~/.config/vim/backup')

" if the location does not exist
if ! isdirectory(backup_path)
  call system('mkdir -p '. backup_path)
endif

" point Vim to the defined undo directory.  
let &backupdir = backup_path


" define a path to store swp files
let swp_path = expand('~/.config/vim/swp')

" if the location does not exist
if ! isdirectory(swp_path)
  call system('mkdir -p '. swp_path)
endif

" point Vim to the defined undo directory.  
let directory = swp_path



