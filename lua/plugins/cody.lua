return {
  {
    "nvim-cmp",
    lazy = false,
    dependencies = { "sourcegraph/sg.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, { name = "cody" })
    end,
  },
  {
    "sourcegraph/sg.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
  },
}
