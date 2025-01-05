return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = true,
        keywordStyle = { italic = false },
        -- functionStyle = { bold = true },
        dimInactive = true,
        -- vim.cmd.hi '@module guisp=#A3D4D5',
        colors = {
          palette = {
            sumiInk0 = '#0d0c0c',
            sumiInk1 = '#12120f',
            sumiInk2 = '#1D1C19',
            sumiInk3 = '#181616',
            sumiInk4 = '#282727',
            sumiInk5 = '#393836',
            sumiInk6 = '#625e5a',
          },
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
        override = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
            PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
          }
        end,
        theme = 'wave',
        background = {
          dark = 'wave',
          light = 'lotus',
        },
      }
      vim.cmd.colorscheme 'kanagawa'
      -- vim.cmd.hi 'Module guisp=#A3D4D5'
      -- vim.cmd.colorscheme 'kanagawa-dragon'
      -- vim.cmd.colorscheme 'kanagawa-lotus'
    end,
  },
}
