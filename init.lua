-- Plugins
vim.api.nvim_exec('source ~/.config/nvim/src/plugins.vim', false)

-- appearance
vim.api.nvim_exec('source ~/.config/nvim/src/appearance.vim', false)

-- tabulation
require('src/tabulation')

-- search
vim.api.nvim_exec('source ~/.config/nvim/src/search.vim', false)

-- folding
vim.api.nvim_exec('source ~/.config/nvim/src/folding.vim', false)
