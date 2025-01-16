return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "💤"
        end,
      })
      table.insert(opts.sections.lualine_x, {
        function()
          return require("lazydo").get_lualine_stats()
        end,
        cond = function()
          return require("lazydo")._initialized
        end,
      })
    end,
  },
}
