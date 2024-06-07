-- Este archivo debe retornar una tabla con la configuración del plugin 'kanagawa.nvim'
return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      -- Configura el tema 'dragon'
      require('kanagawa').setup({
          theme = "dragon"
      })
      -- Aplica el esquema de colores
      vim.cmd("colorscheme kanagawa-dragon")
    end
  }
}

