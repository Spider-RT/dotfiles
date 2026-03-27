require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}
require('nvim-treesitter').install { 'rust', 'javascript', 'zig' }
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '.rs' },
  callback = function() vim.treesitter.start() end,
})

