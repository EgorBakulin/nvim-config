-- Plugins
vim.api.nvim_exec('source ~/.config/nvim/src/plugins.vim', false)

-- appearance
vim.api.nvim_exec('source ~/.config/nvim/src/appearance.vim', false)

-- tabulation
require('tabulation')

-- search
require('search')

-- folding
require('folding')
