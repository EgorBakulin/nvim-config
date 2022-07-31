vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {'neoclide/coc.nvim', branch = 'release'}

    use 'rafcamlet/coc-nvim-lua'

    use 'mattn/emmet-vim'
    use 'Yggdroot/indentLine'
    use 'preservim/nerdtree'
    use 'xuyuanp/nerdtree-git-plugin'
    use 'racer-rust/vim-racer'
    use 'godlygeek/tabular'
    use 'flazz/vim-colorschemes'
    use 'easymotion/vim-easymotion'
    use 'airblade/vim-gitgutter'
    use 'stephpy/vim-php-cs-fixer'
    use 'mhinz/vim-signify'
    use 'qbbr/vim-twig'
end)

vim.cmd [[
let g:coc_disable_startup_warning = 1

let g:coc_global_extensions = ['coc-git', 'coc-phpls', 'coc-css', 'coc-sh', 'coc-rome', 'coc-clangd']

map <C-n> :NERDTreeToggleVCS<CR>

nmap s <Plug>(easymotion-w)
nmap S <Plug>(easymotion-b)
]]

