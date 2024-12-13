return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({
        fvm = false,
        lsp = {
          settings = {
            lineLength = vim.o.textwidth,
            renameFilesWithClasses = "always",
            documentation = "full",
            widget_guides = true,
          },
        },
      })
    end,
    debugger = {
      enabled = true,
      run_via_dap = true,
      exception_breakpoints = {},
      evaluate_to_string_in_debug_views = true,
      register_configurations = function(paths)
        local dap = require("dap")
        -- これを入れないと debugger が動かない
        -- See also: https://github.com/akinsho/flutter-tools.nvim/pull/292
        -- dap.adapters.dart = {
        --   type = "executable",
        --   command = paths.flutter_bin,
        --   args = { "debug-adapter" },
        -- }
        dap.adapters.dart = {
          type = "executable",
          command = "dart", -- if you're using fvm, you'll need to provide the full path to dart (dart.exe for windows users), or you could prepend the fvm command
          args = { "debug_adapter" },
          -- windows users will need to set 'detached' to false
          options = {
            detached = false,
          },
        }
        dap.adapters.flutter = {
          type = "executable",
          command = "flutter", -- if you're using fvm, you'll need to provide the full path to flutter (flutter.bat for windows users), or you could prepend the fvm command
          args = { "debug_adapter" },
          -- windows users will need to set 'detached' to false
          options = {
            detached = false,
          },
        }
      end,
    },
  },
}
