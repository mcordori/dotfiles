
"  1 importante

" comportarse muy compatible con Vi (no aconsejable)
set nocompatible

"  2 moverse, buscar y patrones

" mostrar coincidencias para el comando de búsqueda escrito parcialmente
set incsearch

" ignorar mayúsculas y minúsculas cuando se usa un patrón de búsqueda
set ignorecase

" anular 'ignorecase' cuando el patrón tiene caracteres en mayúsculas
set smartcase

"  3 etiquetas

"  4 mostrando texto

" número de líneas de pantalla para mostrar alrededor del cursor
set scrolloff=6

" se han dividido las líneas largas
" (local a ventana)
set wrap

" mostrar el número de línea para cada línea
" (local a ventana)
set number

" mostrar el número de línea relativo para cada línea
" (local a ventana)
set relativenumber

"  5 sintaxis, resaltado y ortografía

" "dark" o "light"; el brillo del color de fondo
set background=dark

" tipo de archivo; desencadena el evento FileType cuando se establece
" (local a búfer)
filetype on
filetype plugin on
filetype indent on

" nombre del resaltado de sintaxis utilizado
" (local a búfer)
syntax on

" resaltar todas las coincidencias para el último patrón de búsqueda utilizado
set hlsearch

" resaltar la columna de la pantalla del cursor
" (local a ventana)
"set cursorcolumn

" resaltar la línea de pantalla del cursor
" (local a ventana)
set cursorline

"  6 ventanas múltiples

" 0, 1, o 2; cuándo usar una línea de estado para la última ventana
set laststatus=2

"  7 varias pestañas

"  8 terminal

" mostrar información en el título de la ventana
set title

"  9 utilizar el ratón

" lista de opciones para usar el ratón
set mouse=a

" 10 imprimiendo

" 11 mensajes e información

" show (partial) command keys in location given by 'showcmdloc'
set showcmd

" mostrar el modo actual en la línea de estado
set noshowmode

" mostrar la posición del cursor debajo de cada ventana
set ruler

" 12 seleccionar texto

" 13 editar texto

" especifica lo que <Retroceso>, CTRL-W, etc. pueden hacer en el modo Insertar
set backspace=indent,eol,start

" al insertar un corchete, saltar brevemente a su pareja
set showmatch

" 14 tabulaciones y márgenes

" número de espacios que representa un <Tab> en el texto
" (local a búfer)
set tabstop=4

" número de espacios utilizados para cada paso de (auto)sangría
" (local a búfer)
set shiftwidth=4

" expandir <Tab> a espacios en el modo Insertar
" (local a búfer)
set expandtab

" establecer automáticamente la sangría de una nueva línea
" (local a búfer)
set autoindent

" hacer sangría automática inteligente
" (local a búfer)
set smartindent

" 15 plegar

" 16 modo diff (diferencia)

" 17 asignación de teclas (mapping)

" 18 leer y guardar archivos

" mantener una copia de seguridad después de sobreescribir un archivo
set nobackup

" 19 el archivo de intercambio (swap)

" 20 edición de línea de comando

" cuántas líneas de comando recordar
set history=1000

" especifica cómo funciona el completado de la línea de comando
set wildmode=list:longest

" lista de patrones para ignorar archivos para completar el nombre del archivo
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.pptx

" el completado de la línea de comandos muestra una lista de coincidencias
set wildmenu

" 21 ejecutando comandos externos

" 22 ejecutar "make" y saltar a los errores (quickfix)

" 23 específico del sistema

" 24 específico del idioma

" 25 caracteres multi bytes

" 26 varios

" cargar scripts de complementos al iniciar
set loadplugins



" vim-latexsuite
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"



call plug#begin()
Plug 'haishanh/night-owl.vim'
Plug 'preservim/vim-markdown'
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()



if (has("termguicolors"))
    set termguicolors
endif

colorscheme night-owl
let g:lightline = { 'colorscheme': 'night-owl' }

