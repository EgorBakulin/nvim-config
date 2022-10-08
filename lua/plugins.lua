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
        'phaazon/hop.nvim',
        branch = 'v2', 
        config = function()
            local hop = require('hop')
            hop.setup { keys = 'etovxqpdygfblzhckisuran' }
            vim.api.nvim_set_keymap('n', 's', ':HopWordAC<CR>', {})
            vim.api.nvim_set_keymap('n', 'S', ':HopWordBC<CR>', {})
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
    use {
        "NTBBloodbath/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("rest-nvim").setup({
                -- Open request results in a horizontal split
                result_split_horizontal = false,
                -- Keep the http file buffer above|left when split horizontal|vertical
                result_split_in_place = false,
                -- Skip SSL verification, useful for unknown certificates
                skip_ssl_verification = false,
                -- Encode URL before making request
                encode_url = true,
                -- Highlight request on run
                highlight = {
                    enabled = true,
                    timeout = 150,
                },
                result = {
                    -- toggle showing URL, HTTP info, headers at top the of result window
                    show_url = true,
                    show_http_info = true,
                    show_headers = true,
                    -- executables or functions for formatting response body [optional]
                    -- set them to nil if you want to disable them
                    formatters = {
                        json = "jq",
                        html = function(body)
                            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
                        end
                    },
                },
                -- Jump to request line on run
                jump_to_request = false,
                env_file = '.env',
                custom_dynamic_variables = {},
                yank_dry_run = true,
            })
        end
    }

    use 'habamax/vim-godot'
end)
