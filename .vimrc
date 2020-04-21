set nocompatible " Делаем вим адекватным ( не ви )
filetype plugin indent on
call plug#begin('~/.vim/plugged')
   "Всякие крутые штучки по типу быстро очистить что-то в теге или скобочках
	Plug 'tpope/vim-surround'
    "Дерево директории
    Plug 'preservim/nerdtree'
    "Комментер для мужчин
    Plug 'preservim/nerdcommenter'
    "Отступы перед любыми скобочками или ковычками
    Plug 'raimondi/delimitmate'

    "Special for Web
    Plug 'othree/html5.vim'
    Plug 'mattn/emmet-vim'
    Plug 'cakebaker/scss-syntax.vim'
    "js
    Plug 'othree/yajs.vim' "можешь закомментировать если хочется маскимально подстветки синтаксиса
    Plug 'pangloss/vim-javascript'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'ternjs/tern_for_vim', {'do' : 'npm install'}
    "для казуального react
    Plug 'mxw/vim-jsx'
    "На всякий случай полиглот
    Plug 'sheerun/vim-polyglot'

    "Автодоплнение vim
    Plug 'ycm-core/YouCompleteMe'
    Plug 'Shougo/neocomplcache.vim'
    "Djanog Plus
    Plug 'tweekmonster/django-plus.vim'
    "Поддержка jinja 
    Plug 'mitsuhiko/vim-jinja'
call plug#end()

set omnifunc=syntaxcomplete#Complete
"Комменты
let g:NERDSpaceDelims = 1
map <C-x> <plug>NERDCommenterToggle
" Это для темы шрифты и сама тема с плагина vim-colorschemes
set guifont=Monaco:h18
colorscheme jellybeans "ещё есть Oceanicnext из тех что мне нрав
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

"Переопределние emmet 
let g:user_emmet_leader_key='<C-E>'

" Настройка табов для python
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

" Автоотступ
set autoindent
" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" " В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
syntax on "Включить подсветку синтаксиса

set nu " Включить нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak
"
" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler
set hidden

" Выключаем звук в Vim
set visualbell t_vb=
"NERDtree ( дерево папочек ) на ctrl+n
map <C-n> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$'] 

"меняю esc на jj
inoremap jj <Esc>
