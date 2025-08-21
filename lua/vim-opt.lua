vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set wrap")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set virtualedit=block")
vim.cmd("set inccommand=split")
vim.cmd("set splitright")

vim.g.mapleader = " "

-- set up diagnostic
vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = false,
})
