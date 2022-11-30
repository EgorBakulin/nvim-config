vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = {"*.md"},
    command = "setlocal nonumber norelativenumber"
})
