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
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        functionStyle = { italic = true },
        keywordStyle = { italic = false },
        terminalColors = false,
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
          background = false,
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
        transparent_bg = true,
        italic_comments = true,
        --bright_border = true,
        swap_backgrounds = true,
        --reduced_blue = true,
        cursorline = {
          bold = true,
          bold_number = true,
          theme = "dark",
        },
        telescope = {
          style = "classic",
        },
      })
    end,
  },
  {
    "ramojus/mellifluous.nvim",
    priority = 1000,
    color_set = "mellifluous",
    config = function()
      require("mellifluous").setup({
        dim_inactive = false,
        styles = {
          comments = { italic = true },
          booleans = { italic = true },
        },
        flat_background = {
          line_numbers = true,
          floating_windows = false,
          file_tree = true,
          cursor_line_number = true,
        },
        transparent_background = {
          enabled = false,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = {
      flavour = "mocha", -- auto latte frappe macchiato mocha
      transparent_background = true,
    },
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          -- posee varios sabores mi fav es duskfox
          transparent = true,
          styles = {
            comments = "italic, bold",
          },
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "dark",
        transparent = true,
        code_style = {
          functions = "italic",
        },
      })
    end,
  },
  {
    "mhartington/oceanic-next",
    -- name OceanicNext
    priority = 1000,
  },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        style = "vulgaris",
        transparent = true,
      })
    end,
  },
  {
    "rockyzhang24/arctic.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
    branch = "main",
    priority = 1000,
  },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    "embark-theme/vim",
    as = "embark",
  },
  {
    "kdheepak/monochrome.nvim",
    priority = 1000,
  },
  {
    "Abstract-IDE/Abstract-cs",
    -- name abscs
    priority = 1000,
  },
  {
    "rockerBOO/boo-colorscheme-nvim",
    lazy = false,
    priority = 1000,
  },
}
