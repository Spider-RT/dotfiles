local cmd = vim.cmd

cmd("set so=15")
cmd("set number")
cmd("set mouse=")

vim.bo.makeprg = "cargo build 2>&1"
