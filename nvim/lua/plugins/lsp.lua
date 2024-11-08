return {
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "html",
          "cssls",
          "eslint",
          "ts_ls",
          "pylsp",
          "jsonls",
          "marksman",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- lua
      lspconfig.lua_ls.setup({})
      -- Typescript / Javascript
      lspconfig.ts_ls.setup({
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayVariableTypeHintsWhenTypeMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayVariableTypeHintsWhenTypeMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      })
      -- Rust
      lspconfig.rust_analyzer.setup({})
      -- HTML
      lspconfig.html.setup({})
      -- CSS
      lspconfig.cssls.setup({})
      -- ESLint
      lspconfig.eslint.setup({})
      -- Python
      lspconfig.pylsp.setup({})
      -- JSON
      lspconfig.jsonls.setup({})
      -- Markdown
      lspconfig.marksman.setup({})
    end,
  },
  {
    "MysticalDevil/inlay-hints.nvim",
    event = "LspAttach", -- se activa cuando un LSP se adjunta
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("inlay-hints").setup()
    end,
  },
}
