
filetype plugin on
"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
if has('vim_starting')
    set nocompatible               " Be iMproved
endif

let g:vim_bootstrap_langs = "python"
let g:vim_bootstrap_editor = ""				" nvim or vim

" Required:
call plug#begin()

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'benmills/vimux'
Plug 'greghor/vim-pyShell'
Plug 'julienr/vim-cellmode'

call plug#end()

" Required:
filetype plugin indent on
"

"*****************************************************************************
"" Mappings
"*****************************************************************************

" vim cell-mode parameters
let g:cellmode_use_tmux=1
let g:cellmode_tmux_panenumber=1

" ipython-shell
noremap ,ss :call StartPyShell()<CR>
noremap ,sk :call StopPyShell()<CR>

" code execution
nnoremap ,l  :call PyShellSendLine()<CR>
noremap <silent> <C-b> :call RunTmuxPythonCell(0)<CR>
noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>

" code inspection
nnoremap ,sl :call PyShellSendKey("len(<C-R><C-W>)\r")<CR><Esc>
nnoremap ,sc :call PyShellSendKey("<C-R><C-W>.count()\r")<CR><Esc>
nnoremap ,so :call PyShellSendKey("<C-R><C-W>\r")<CR><Esc>
vnoremap ,so y:call PyShellSendKey(substitute('<C-R>0',"\"","\\\"","")."\r")<CR> 

" on data frames
nnoremap ,sdh :call PyShellSendKey("<C-R><C-W>.head()\r")<CR><Esc>
nnoremap ,sdc :call PyShellSendKey("<C-R><C-W>.columns\r")<CR><Esc>
nnoremap ,sdi :call PyShellSendKey("<C-R><C-W>.info()\r")<CR><Esc>
nnoremap ,sdd :call PyShellSendKey("<C-R><C-W>.describe()\r")<CR><Esc>
nnoremap ,sdt :call PyShellSendKey("<C-R><C-W>.dtypes\r")<CR><Esc>

" plot
nnoremap ,spp :call PyShellSendKey("<C-R><C-W>.plot()\r")<CR><Esc>
nnoremap ,sph :call PyShellSendKey("<C-R><C-W>.hist()\r")<CR><Esc>
nnoremap ,spc :call PyShellSendKey("plt.close('all')\r")<CR><Esc>


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set relativenumber
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab


"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

  
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

if &term =~ '256color'
  set t_ut=
endif


"" Status bar
set laststatus=2



