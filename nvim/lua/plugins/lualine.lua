return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      sections = {
        lualine_c = {
          {
            "harpoon2",
            no_harpoon = "Harpoon not loaded",
          },
        }
      }
    })
  end,
}
