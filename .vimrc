" Plugin configs
	
	filetype off

	call pathogen#infect()
	call pathogen#helptags()

	filetype plugin indent on
	syntax on
" Python plugin
	let g:pymode = 1
	let g:pymode_options = 1
	let g:pymode_indent = 1
	let g:pymode_motion = 1
	let g:pymode_rope = 1
	let g:pymode_run = 1
	let g:pymode_run_bind = '<leader>r'
	let g:pymode_rope_completion = 1
	let g:pymode_rope_complete_on_dot = 1
	let g:pymode_rope_completion_bind = '<C-Space>'
	let g:pymode_syntax = 1

" Latex plugin
	let g:livepreview_previewer = 'zathura'

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
" Shortcut remappings
	vnoremap <C-c> "+y
	map <C-v> "+p
	
" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
" Command remappings
	map <F6> :setlocal spell! spelllang=en_us<CR>

" set basics
	set number
	syntax on
	set encoding=utf-8
	set hlsearch

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright


