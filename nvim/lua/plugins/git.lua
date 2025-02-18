return {
  {"tpope/vim-fugitive"},
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = '+' },
          change = { text = '∾' },
          untracked = { text = '│' }
        },
        signs_staged = {
          add = { text = '+' },
          change = { text = '∾' },
          untracked = { text = '│' }
        }
      })
    end
  }
}

