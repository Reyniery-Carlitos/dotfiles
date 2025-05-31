local lualine = require("lualine")

local colors = {
  blue   = "#80a0ff",
  cyan   = "#79dac8",
  black  = "#080808",
  white  = "#c6c6c6",
  red    = "#ff5189",
  violet = "#d183e8",
  grey   = "#303030",
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

lualine.setup({
  options = {
    theme = "auto",
    component_separators = "",
    section_separators = { left = "", right = "" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { { "mode", separator = { left = " " }, right_padding = 2 } },
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {},
    lualine_y = {"encoding", "filetype", "progress" },
    lualine_z = { { "location", separator = { right = " " }, left_padding = 2 } },
  },
  inactive_sections = {
    lualine_a = {
      {
        "filename", 
        cond = function()
          return vim.bo.filetype ~= "NvimTree"
        end
      }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
  tabline = {},
  extensions = {},
})
