vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'rafcamlet/coc-nvim-lua'

    use 'mattn/emmet-vim'

    use 'kyazdani42/nvim-web-devicons'

    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-buffer'

    use 'hrsh7th/cmp-path'

    use 'saadparwaiz1/cmp_luasnip'

    use 'L3MON4D3/LuaSnip'

    use 'hrsh7th/cmp-nvim-lsp'

    use 'rafamadriz/friendly-snippets'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() 
            require('lualine').setup {
                options = { theme = 'gruvbox-material',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''}
                }
            }
            require('lualine').setup()
        end
    }

    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v2.x',
        requires = { 
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons', 
            'MunifTanjim/nui.nvim',
        },
        config = function()
            vim.api.nvim_set_keymap('n', '<C-n>', ':NeoTreeShowToggle<CR>', { noremap = true })
        end
    }

    use 'racer-rust/vim-racer'

    use 'godlygeek/tabular'

    use {
        'flazz/vim-colorschemes',
        config = function()
            vim.cmd([[colorscheme Monokai]])
        end
    }


    use {
        'easymotion/vim-easymotion',
        config = function()
            vim.cmd [[
                nmap s <Plug>(easymotion-w)
                nmap S <Plug>(easymotion-b) 
            ]]
        end
    }

    use 'airblade/vim-gitgutter'

    use 'stephpy/vim-php-cs-fixer'

    use 'mhinz/vim-signify'

    use 'qbbr/vim-twig'

    use {
        "folke/which-key.nvim",
        config = function()
            require('which-key').setup {
            }
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { 
	    'nvim-lua/plenary.nvim' 
	},
        config = function()
            require('telescope').setup{}
        end
    }

    use 'habamax/vim-godot'
end)
