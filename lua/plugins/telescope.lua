return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
          require("telescope").load_extension("flutter")
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fP",
        function()
          require("telescope").load_extension("flutter")
          require("telescope").extensions.flutter.fvm()
        end,
        desc = "Find Sdk Flutter",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
