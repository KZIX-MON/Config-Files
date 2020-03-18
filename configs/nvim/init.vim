" Plugins
call plug#begin(stdpath('data') . '/plugged')
" Fill in with the theme you desire
call plug#end()

" Basics :
	syntax on
	set encoding=utf-8
	set number relativenumber
	filetype plugin indent on	
	set termguicolors
	set nohlsearch
	set clipboard+=unnamedplus

" Auto Compile :
	autocmd BufWritePost *.tex !pdflatex *.tex 

	autocmd BufWritePost config.h !sudo make install
	
	autocmd BufWritePost *.c !gcc -o ~/exec/c/%.out ./% 

" Others :
	set splitright

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
" Theme :
" Fill in with the theme you desire
