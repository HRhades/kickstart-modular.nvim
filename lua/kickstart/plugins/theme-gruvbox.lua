return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_foreground = 'mix'
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
    vim.g.gruvbox_material_float_style = 'dim'
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
