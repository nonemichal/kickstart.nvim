return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_enable_italic = false
    vim.g.gruvbox_material_foreground = 'material'
    vim.g.gruvbox_material_better_performance = 1
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
