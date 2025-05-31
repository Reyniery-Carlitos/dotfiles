vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.guifont = "JetBrainsMono Nerd Font:h12"
vim.o.background = "dark"

vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.diagnostic.config({
  virtual_text = {
    prefix = "❌", -- Puedes usar "", "●", ">>", etc.
    spacing = 2,
  },
  underline = false,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
})
