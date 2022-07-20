-- Plugins
vim.api.nvim_exec('source ~/.config/nvim/src/plugins.vim', false)

-- appearance
vim.api.nvim_exec('source ~/.config/nvim/src/appearance.vim', false)

-- tabulation
require('src/tabulation')

-- search
require('src/search')

-- folding
vim.api.nvim_exec('source ~/.config/nvim/src/folding.vim', false)
