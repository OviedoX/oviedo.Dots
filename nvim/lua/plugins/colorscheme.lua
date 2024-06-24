return {
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      -- vim.cmd.colorscheme("sonokai")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        name = "kanagawa",
        priority = 1000,
        transparent = false,
      })
    end,
  },
  {
    "sainnhe/everforest",
    priority = 1000,
    lazy = false,
    config = function()
      vim.g.everforest_transparent_background = 1
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_float_style = "dim"
      vim.g.everforest_diagnostic_text_highlight = 1
      -- vim.g.everforest_dim_inactive_windows = 1
      vim.g.everforest_ui_contrast = "high"
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_diagnostic_line_highlight = 1
      -- vim.g.everforest_show_eob = 1
      -- vim.cmd.colorscheme("hard")
    end,
  },
  {
    "marko-cerovac/material.nvim",
    priority = 1000,
    config = function()
      require("material").setup({
        contrast = {
          terminal = true,
          sidebars = true,
          floating_windows = true,
          cursor_line = true,
          --lsp_virtual_text = true,
        },
        disable = {
          colored_cursor = true,
          background = true,
          term_colors = true,
        },
        -- high_visibility = {
        --   lighter = false,
        --   darker = true,
        -- },
        lualine_style = "default",
        async_loading = true,
      })
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        bold_keywords = true,
        transparent_bg = false,
        italic_comments = true,
        reduced_blue = false,
        swap_backgrounds = true,
        cursorline = {
          bold = true,
          bold_number = true,
          theme = "dark",
        },
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        dim_nc_background = false,
        disable_background = true,
        disable_float_background = true,
      })
    end,
  },
  {
    "ramojus/mellifluous.nvim",
    priority = 1000,
    config = function()
      require("mellifluous").setup({
        styles = {
          comments = { italic = true },
        },
        transparent_background = {
          enabled = true,
          floating_windows = false,
          telescope = true,
          file_tree = true,
          cursor_line = false,
          status_line = false,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = {
      flavour = "auto",
      transparent_background = true,
    },
  },
}
