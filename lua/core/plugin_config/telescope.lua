require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        sorting_strategy = "descending",
        theme = "dropdown",
        border = true,
    },
})

-- Key Mappings
vim.keymap.set('n', '<leader>t', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>s', ':Telescope grep_string<CR>')
