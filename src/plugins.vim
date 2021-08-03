call plug#begin('~/.config/nvim/plugged')

Plug 'qbbr/vim-twig'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-sh', 'coc-rome']

Plug 'preservim/nerdtree'
map <C-n> :NERDTreeToggleVCS<CR>
let NERDTreeMapCloseDir='h'
let NERDTreeMapActivateNode='a'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'mhinz/vim-signify'

Plug 'airblade/vim-gitgutter'

Plug 'Yggdroot/indentLine'

Plug 'godlygeek/tabular'

Plug 'easymotion/vim-easymotion'
nmap s <Plug>(easymotion-w)
nmap S <Plug>(easymotion-b)

Plug 'mattn/emmet-vim'

Plug 'flazz/vim-colorschemes'

call plug#end()
