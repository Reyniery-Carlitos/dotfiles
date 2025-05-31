local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  print("Lazy.nvim not found")
  return
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Core
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" }
    },
    config = function() require("plugins.nvim-tree") end
  },

  { "kyazdani42/nvim-web-devicons" },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = vim.fn.executable("make") == 1,
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },

  -- UI
  { "catppuccin/nvim",           name = "catppuccin",                               priority = 1000, lazy = true },
  {
    "sainnhe/everforest",
    priority = 1000,                       -- Load early
    config = function()
      vim.g.everforest_background = "hard" -- Options: 'soft', 'medium', 'hard'
      vim.g.everforest_enable_italic = 1
    end
  },
  { "nvim-lualine/lualine.nvim", config = function() require("plugins.lualine") end },
  { "folke/which-key.nvim",      config = true },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require(
        "plugins.treesitter")
    end
  },

  -- LSP & Autocomplete
  { "neovim/nvim-lspconfig",   config = function() require("plugins.lsp") end },
  { "williamboman/mason.nvim", build = ":MasonUpdate",                        config = true },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "ts_ls", "clangd", "rust_analyzer", "html", "cssls", "jsonls" },
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip"
    },
    config = function() require("plugins.cmp") end
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require("plugins.conform")
    end,
  },

  -- GIT
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
    keys = {
      { "<leader>gs", ":Git<CR>",        desc = "Fugitive: Git status" },
      { "<leader>gd", ":Gdiffsplit<CR>", desc = "Fugitive: Git diff" },
      { "<leader>gc", ":Gcommit<CR>",    desc = "Fugitive: Git commit" },
      { "<leader>gp", ":Gpush<CR>",      desc = "Fugitive: Git push" },
      { "<leader>gl", ":Glog<CR>",       desc = "Fugitive: Git log" },
    },
    config = function()

    end,
  },

  -- Extra
  { "windwp/nvim-autopairs",          config = true },
  { "lewis6991/gitsigns.nvim",        config = true },
  { "numToStr/Comment.nvim",          config = true },
  { "supermaven-inc/supermaven-nvim", config = function() require("plugins.supermaven") end },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("plugins.harpoon") end,
  },
})
