return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          settings = {
            lineLength = vim.o.textwidth,
            renameFilesWithClasses = "always",
            documentation = "full",
          },
        },
      })
    end,
  },
}
