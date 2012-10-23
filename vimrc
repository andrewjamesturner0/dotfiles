set nocompatible                                    " Set 'nocompatible' to ward off unexpected things
filetype indent plugin on                           " Attempt to determine the type of a file based on its name
syntax on                                           " Enable syntax highlighting
set wildmenu                                        " Better command-line completion
set showcmd                                         " Show partial commands in the last line of the screen
set hlsearch                                        " Highlight searches 
set ignorecase
set smartcase
set backspace=indent,eol,start                      " Allow backspacing over autoindent, line breaks and start of insert action
set autoindent                                      " When opening a new line and no filetype-specific indenting is enabled,
                                                    " keep the same indent as the line you're currently on. Useful for READMEs,
                                                    " etc.
set nostartofline                                   " Stop certain movements from always going to the first character of a line.
set ruler                                           " Display the cursor position on the last line of the screen or in the 
                                                    "  status line of a window
set laststatus=2                                    " Always display the status line, even if only one window is displayed
set confirm                                         " Instead of failing a command because of unsaved changes, instead raise a 
                                                    " dialogue asking if you wish to save changed files.
"set visualbell                                     " Use visual bell instead of beeping when doing something wrong
set cmdheight=2                                     " Set the command window height to 2 lines, to avoid many cases of having 
                                                    " to "press <Enter> to continue"
set number                                          " Display line numbers on the left
set notimeout ttimeout ttimeoutlen=200              " Quickly time out on keycodes, but never time out on mappings
set pastetoggle=<F11>                               " Use <F11> to toggle between 'paste' and 'nopaste'
set shiftwidth=4                                    " Indentation settings for using 4 spaces instead of tabs. Do not change 
                                                    " 'tabstop' from its default value of 8 with this setup.
set softtabstop=4
set expandtab
map Y y$                                            " Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy, 
                                                    " which is the default
nnoremap <C-L> :nohl<CR><C-L>                       " Map <C-L> (redraw screen) to also turn off search highlighting until the 
                                                    " next search
colorscheme LightDefault
