return {
  -- add gruvbox
  {
    "ellison/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      transparent = true,
      styles = {
        sidebars = "transparent",
        float = "transparent",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
