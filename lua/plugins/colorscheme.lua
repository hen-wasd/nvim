return {
  -- add material
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "jackplus-xyz/binary.nvim",
    opts = {
      style = "dark",
      -- colors = {
      --   fg = "#FFB400",
      -- },
      -- Customize the reversed groups
      reversed_group = {
        Title = true, -- Add a new reversed group
        Search = false, -- Disable a default reversed group
      },
    },
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenbones",
      background = "dark",
    },
  },
}
