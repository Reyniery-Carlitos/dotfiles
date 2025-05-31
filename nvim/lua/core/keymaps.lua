vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { noremap = true, silent = true, desc = "Telescope find files" })

keymap("n", "<leader>fw", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Telescope live grep" })

keymap("i", "jk", "<Esc>", { noremap = true, silent = true})
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Alternar NvimTree", noremap = true, silent = true })

vim.keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format()
end, { desc = "Formatear con LSP" })
