return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true

    require("nvim-tree").setup({})
    local wk = require("which-key")
    wk.add({
      { "<leader>n", group = "[N]vimTree", icon = "󱏒" },
      { "<leader>nt", ":NvimTreeToggle<CR>", desc = "[T]oggle Tree", mode = "n" },
      { "<leader>nc", ":NvimTreeCollapse<CR>", desc = "[C]ollapse Tree", mode = "n" },
      { "<leader>nf", ":NvimTreeFindFile<CR>", desc = "Open Current [F]ile on Tree", mode = "n" },
    })
  end,
}
