local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon add" })
vim.keymap.set("n", "<leader>hr", function() harpoon:list():rename() end, { desc = "Harpoon rename" })
vim.keymap.set("n", "<leader>hd", function() harpoon:list():delete() end, { desc = "Harpoon delete" })

-- Toggle quick menu
vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon quick menu" })

-- Harpoon list
vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harpoon select 1" })
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harpoon select 2" })
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harpoon select 3" })
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harpoon select 4" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon previous" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon next" })
