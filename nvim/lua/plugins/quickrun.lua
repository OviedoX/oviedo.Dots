return {
  {
    "thinca/vim-quickrun",
    config = function()
      vim.g.quickrun_config = {
        javascript = {
          command = "node",
          exec = "%c %s",
        },
        lua = {
          command = "lua54",
          exec = "%c %s",
        },
        python = {
          command = "python",
          exec = "%c %s",
        },
        -- typescript = {
        --   command = "tsc",
        --   exec = "%c %s",
        -- },
      }
    end,
  },
}
