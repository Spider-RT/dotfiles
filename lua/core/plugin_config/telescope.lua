require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        sorting_strategy = "descending",
        theme = "dropdown",
        border = true,
    },
})

-- Key Mappings
vim.keymap.set('n', '<leader>t', ':Telescope find_files hidden=true<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers hidden=true<CR>')
vim.keymap.set('n', '<leader>s', ':Telescope grep_string<CR>')
