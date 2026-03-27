-- Update quickfix list
local rust_on_save = vim.api.nvim_create_augroup("RustOnSave", { clear = true })
local timer = nil

vim.api.nvim_create_autocmd("BufWritePost", {
    group = rust_on_save,
    pattern = "*.rs",
    callback = function()
        if timer then
            timer:stop(1)
        end
        timer = vim.defer_fn(function()
            vim.cmd("silent! make! | redraw!")
            vim.diagnostic.setqflist({ severity = vim.diagnostic.severity.ERROR })
            vim.cmd("wincmd p")
        end, 500)
    end
})

-- Format rust files after save

vim.api.nvim_create_autocmd("BufWritePost", {
    group = rust_on_save,
    pattern = "*.rs",
    callback = function()
        vim.cmd("silent !cargo fmt")
    end
})
