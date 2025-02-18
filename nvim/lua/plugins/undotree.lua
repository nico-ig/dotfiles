return {
  "mbbill/undotree",
  config = function ()
    vim.o.undofile = true
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_SplitWidth = vim.fn.winwidth(0) - 105
    vim.g.undotree_DiffpanelHeight = vim.fn.winheight(0) / 3
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_DiffCommand = "diff"
  end,
}
