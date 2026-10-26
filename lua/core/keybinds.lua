local set = vim.keymap.set

set("n", "<leader>h", ":wincmd h<CR>", {silent=true})
set("n", "<leader>j", ":wincmd j<CR>", {silent=true})
set("n", "<leader>k", ":wincmd k<CR>", {silent=true})
set("n", "<leader>l", ":wincmd l<CR>", {silent=true})
set("n", "<leader>en", vim.cmd.cnext)
set("n", "<leader>ep", vim.cmd.cprev)

set("n", "<leader>ln", vim.cmd.lnext)
set("n", "<leader>lp", vim.cmd.lprev)

set("n", ",", ":noh<CR>", {silent=true})

set("n", "<leader>c", ":bd<CR>", {silent=true})
set("n", "<leader>s", "e #<CR>", {silent=true})

set("n", "<C-c>", ":Commentary<CR>", {silent=true})
set("n", "0", "^")

set("n", "<leader>H", ":BufferPrevious<CR>", {silent=true})
set("n", "<leader>L", ":BufferNext<CR>", {silent=true})
set("n", "<leader>Tn", ":tabnew<CR>", {silent=true})

set("n", "<leader>W", ":Telescope workspaces<CR>", { silent=true })
