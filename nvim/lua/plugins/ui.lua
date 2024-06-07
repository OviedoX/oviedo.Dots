return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
██╗   ██╗██╗  ██╗██╗      ██████╗ ███╗   ███╗██████╗ ██╗      ██████╗ 
╚██╗ ██╔╝██║  ██║██║     ██╔═══██╗████╗ ████║██╔══██╗██║     ██╔════╝ 
 ╚████╔╝ ███████║██║     ██║   ██║██╔████╔██║██║  ██║██║     ██║  ███╗
  ╚██╔╝  ██╔══██║██║     ██║▄▄ ██║██║╚██╔╝██║██║  ██║██║     ██║   ██║
   ██║   ██║  ██║███████╗╚██████╔╝██║ ╚═╝ ██║██████╔╝███████╗╚██████╔╝
   ╚═╝   ╚═╝  ╚═╝╚══════╝ ╚══▀▀═╝ ╚═╝     ╚═╝╚═════╝ ╚══════╝ ╚═════╝ 
]]
    logo = string.rep("\n", 8) .. logo .. "\n\n"

-- add color dashboard
    vim.api.nvim_exec([[
      augroup DashboardColors
      autocmd!
      autocmd VimEnter * highlight DashboardHeader guifg=#2B2B2B guibg=NONE
      augroup END

  " Enlazar el color personalizado al header del dashboard
  autocmd VimEnter * highlight link DashboardLogo DashboardHeader
]], false)

      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
