" This is Bryan's vim settings file

" ====== Make text editing more intuitive ======
  set nocp " Remove Vi Compatibility (cleans up a lot of unintuitive default behaviors)
  set backspace=indent,eol,start " allows backspace to delete lines, tabs, and other things.
  set nostartofline " Prevents column position from changing when navigating

" ======  Tab Settings ======
  set expandtab " inputs spaces instead of tabs
  set tabstop=2 " set tab to be the length of two spaces
  set autoindent " automatically indent upon pressing enter
  set shiftwidth=2 " causes auto-indent to use two spaces instead of tabs

" ====== Display settings ======
  set number " display line numbers
  set nowrap " does not wrap text
  set showcmd " show keystrokes in status line
  set laststatus=2 " display the status line
" set statusline=%#StatusLineNC#\ Git\ %{GitBranchInfoTokens()[0]}\ %#LineNr#\ %t " displays git branch + other info in status line

" ====== Search Settings ======
  set ignorecase " makes searching case insensitive
  set smartcase " searching becomes case sensitive IF you capitalize the search term
  set incsearch " highlights the first item found via search

" ====== Color Scheme Settings ======
  filetype on " allow vim to detect the filetype
  syntax on " turn on syntax detection and therefore enable syntax highlighting
  au BufNewFile,BufRead *.module set filetype=php " add Drupal specific extensions for php syntax highlighting
  au BufNewFile,BufRead *.install set filetype=php " add Drupal specific extensions for php syntax highlighting
  au BufNewFile,BufRead *.lmx set filetype=xml " add Drupal specific extensions for php syntax highlighting
  au BufNewFile,BufRead *.inc set filetype=php " add Drupal specific extensions for php syntax highlighting
  set background=dark " tells vim that you are using a dark background, and to adjust the color scheme accordingly

" ====== Color Schemes - Uncomment your color scheme of choice ======
  colorscheme wombat256 " set colorscheme to wombat256
" set colorscheme wombat " set colorscheme to wombat

" ====== Key bindings ======
  inoremap jk <esc> " type jk in insert mode to switch to normal mode

" ====== Disable key bindings that form bad habits - uncomment these when you are brave ======
" Note : <nop> means 'no operation' and makes a key have no response when pressed
" inoremap <esc> <nop> " disable the escape key, forcing you to use key bindings to swap into normal mode
" inoremap <Left> <nop> " disable the arrow keys for navigation
" inoremap <Right> <nop> " disable the arrow keys for navigation
" inoremap <Up> <nop> " disable the arrow keys for navigation
" inoremap <Down> <nop> " disable the arrow keys for navigation

" ====== Plugin Settings ======
  filetype plugin on " enable loading of plugin files for specific file types --- originally enable for matchit plugin
