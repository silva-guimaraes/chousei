"inicio

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'octol/vim-cpp-enhanced-highlight'
	Plugin 'jiangmiao/auto-pairs'
	"Plugin 'vim-syntastic/syntastic'
	"Plugin 'https://github.com/ycm-core/YouCompleteMe'



call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"importante
	set backspace=indent,eol,start    		"backspace normal
	set noswapfile


"rice
	let g:airline_theme='sol'
	syntax on					"syntaxe ligado 
	colorscheme pablo				"esquema de cor
	set background=light				"texto com contraste correto
	"visual contraste
	hi Visual term=reverse cterm=reverse 

	set laststatus=2				"mostrar barra de status mesmo com apenas uma janela aberta
	"linha clara em baixo do curso
	"hi cursorline cterm=none ctermbg=234 term=reverse	 


"ultilidade
	set nowrap					"texto não dar newline
	set number					"numero mostrando linha atual
	set relativenumber				"numeros relativos ao ponteiro
	set showcmd					"mostrar quais teclas foram pressionadas
	set sidescrolloff=2				"ponteiro nunca fica a N caracteres perto da borda
	set scrolloff=8					"ponteiro nunca ficar a menos de N linhas perto da borda
	set cursorline					"linha debaixo do cursor


"caracteres
	set nospell
	set spelllang=en_us,pt_br			"spellcheck linguas
	set encoding=utf-8				"todos os carecteres
	set shiftwidth=4				"quantos espaços para indentar 
	set nocindent
	set smartindent
	filetype indent on

"syntastic/YCM
	"let g:syntastic_always_populate_loc_list = 1
	"let g:syntastic_auto_loc_list = 1
	"let g:syntastic_check_on_open = 1
	"let g:syntastic_check_on_wq = 0
	"let g:ycm_error_symbol = '誤' 
	"let g:loaded_youcompleteme = 1

"mappings -------------------------------------


	"apagar resto da linha e editar
		map gl cL
	"copiar para linha de baixo/cima
		noremap gp :pu <CR> ==
		noremap gP :pu! <CR> == 
	"deletar/copiar linha excluindo whitespace
		nnoremap <Leader>dd _yg_"_dd
		nnoremap <Leader>yy _yg_
	"pular um bloco
		noremap { }
		noremap } {
	"selecionar proximo parentesis
		noremap ( f(
		noremap ) f)

	"newline
		noremap <CR> o<Esc>k 

	"registrador do clipboard
		noremap <leader><leader> "+
	"control V modo insert
		inoremap <C-v> <C-r>+
		
	"voltar para a ultima linha editada
		noremap gi gi<Esc> 
	"ir para primeira ou ultima linha
		noremap gj <S-g>
		noremap gk gg
	"descer e subir rapidão vruuum
		noremap <C-j> 5j
		noremap <C-k> 5k 
	"shift + esquerda/direito inicio/final da linha
		noremap H ^
		noremap L g_


	"pesquisar palavra em baixo do curso
		noremap gm g*


"buffer
	"salvar e ir para arquivo em baixo do cursor
		noremap gf :write<CR>gf
	"buffer previo
		noremap <C-g> :bprev<CR> 
	"abrir esse arquivo
		noremap <F1> :edit $HOME/.vimrc <CR>
	"aplicar mudanças (sem a necessidade de reiniciar o vim)
		noremap <F2> :so $HOME/.vimrc <CR>


"janelas
	"nova janela
		noremap ss :split<Return><C-w>
		noremap sv :vsplit<Return><C-w> 
	"mover para janelas
		noremap sh <C-w>h
		noremap sk <C-w>k
		noremap sj <C-w>j
		noremap sl <C-w>l


	"salvar
		"noremap <C-s> :write<CR>
		noremap sd :quit<CR>
		noremap SF :q!<CR>


"rodar
	"abrir Makefile 
		noremap <F3> :tab new<CR>:e Makefile<CR>
	"make
		noremap <F4> :write <CR> :!make<CR>
	"make run	
		noremap <F5> :write<CR>:!clear && make run<CR>
	"favor não por nenhum caractere depois de nenhum CR
