vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
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
