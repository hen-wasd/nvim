return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({
        decorations = {
          statusline = {
            app_version = false,
            device = false,
          },
        },
        debugger = {
          enabled = true,
        },
        lsp = {
          settings = {
            lineLength = 160,
            renameFilesWithClasses = "always",
            documentation = "full",
            widget_guides = true,
          },
        },
      })
    end,
  },
}
