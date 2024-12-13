return {
  -- add gruvbox
  -- {
  --   "ellison/gruvbox.nvim",
  --   opt = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       float = "transparent",
  --     },
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
