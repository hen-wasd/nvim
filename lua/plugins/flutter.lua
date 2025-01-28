return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({
        debugger = {
          enabled = true,
          register_configurations = function(_)
            require("dap").configurations.dart = {}
            require("dap.ext.vscode").load_launchjs()
          end,
        },
        flutter_path = "<workspace>/.fvm/flutter_sdk",
        fvm = true,
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
